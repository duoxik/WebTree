<script type="text/javascript">
    $(document).ready(function() {
        lockFunc();
    });

    var timeoutID;

    function openFolderFunc(obj) {
        var nextElement = $(obj).next();
        var id = obj.id;

        switch (nextElement.attr('class')) {
            case "closed":
                nextElement.removeClass("closed").addClass("loading");
                timeoutID = setTimeout(function () {
                    $.ajax({
                        url: window.location + '/showChildren/' + id,
                        type: 'GET',
                        async: true,
                        success: function (data) {
                            $('#ul_' + obj.id).html(data);
                            nextElement.removeClass("loading").addClass("opened");
                        },
                        error: function(e) {
                            alert('Error: entered invalid input data.')
                        }
                    });
                }, 100);
                obj.checked = true;
                break;
            case "opened":
                $('#ul_' + id).empty();
                nextElement.removeClass("opened").addClass("closed");
                obj.checked = false;
                break;
            case "loading":
                window.clearTimeout(timeoutID);
                nextElement.removeClass("loading").addClass("closed");
                obj.checked = false;
                break;
            default:
                alert('Error: something went wrong.')
        }
    }

    function lockFunc() {
        $(".b_create").attr("disabled", true);
        $(".b_update").attr("disabled", true);
        $(".b_remove").attr("disabled", true);

        $('input[name="cr_node_value"]').prop('disabled', true);
        $('input[name="up_node_value"]').prop('disabled', true);
        $('input[name="up_node_parent_id"]').prop('disabled', true);
    }

    function unlockFunc() {
        $(".b_create").attr("disabled", false);
        $(".b_update").attr("disabled", false);
        $(".b_remove").attr("disabled", false);

        $('input[name="cr_node_value"]').prop('disabled', false);
        $('input[name="up_node_value"]').prop('disabled', false);
        $('input[name="up_node_parent_id"]').prop('disabled', false);
    }

    function createNodeFunc() {
        var value = $('input[name="cr_node_value"]').val();
        var parent_id = $('input[name="s_node_id"]').val();
        var requestBody = {id: 0, value: value, parent_id: parent_id};

        $.ajax({
            url: window.location + '/addNode',
            type: 'POST',
            async: false,
            data: requestBody,
            success: function (data) {
                location.reload();
            },
            error: function(e) {
                // TODO error handler
            }
        });
    }

    function updateNodeFunc() {
        var id = $('input[name="s_node_id"]').val();
        var value = $('input[name="up_node_value"]').val();
        var parent_id = $('input[name="up_node_parent_id"]').val();
        var requestBody = {id: id, value: value, parent_id: parent_id};

        if (id != 1) {
            $.ajax({
                url: window.location + '/updateNode',
                type: 'POST',
                async: false,
                data: requestBody,
                success: function (data) {
                    location.reload();
                },
                error: function(e) {
                    alert('Error: entered invalid input data.')
                }
            });
        } else {
            alert('Error: cannot update root element.');
        }

    }

    function removeNodeFunc() {
        var id = $('input[name="s_node_id"]').val();

        if (id != 1) {
            $.ajax({
                url: window.location + '/deleteNode/id' + id,
                type: 'GET',
                async: false,
                success: function (data) {
                    location.reload();
                },
                error: function(e) {
                    alert('Error: entered invalid input data.')
                }
            });
        } else {
            alert('Error: cannot delete root element.');
        }
    }

    function clearDataFunc() {
        $('input[name="s_node_id"]').val("");
        $('input[name="s_node_value"]').val("");
        $('input[name="s_node_parent_id"]').val("");
        $('input[name="up_node_value"]').val("");
        $('input[name="up_node_parent_id"]').val("");
        $('input[name="cr_node_value"]').val("");
    }

    function unselectFunc() {
        $(".selected").removeClass("selected");
        clearDataFunc();
    }

    function selectFunc(obj) {
        unselectFunc();
        $(obj).addClass("selected");

        var data = obj.dataset;
        $('input[name="s_node_id"]').val(data.id);
        $('input[name="s_node_value"]').val(data.value);
        $('input[name="s_node_parent_id"]').val(data.parentId);
        $('input[name="up_node_value"]').val(data.value);
        $('input[name="up_node_parent_id"]').val(data.parentId);

        unlockFunc();
    }

</script>