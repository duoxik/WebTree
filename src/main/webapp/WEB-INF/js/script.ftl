<script type="text/javascript">
    $(document).ready(function() {
        lockButtonsFunc();
    });

    function requestFunc(obj) {
        if (obj.checked == true) {

            $.ajax({
                url: window.location + '/showChildren/' + obj.id,
                type: 'GET',
                async: false,
                success: function (data) {
                    $('#ul_' + obj.id).html(data);
                },
                error: function (e) {
                    alert('Error ' + e);
                }
            });
        } else {
            $('#ul_' + obj.id).empty();
        }
    }

    function lockButtonsFunc() {
        $(".b_create").attr("disabled", true);
        $(".b_update").attr("disabled", true);
        $(".b_remove").attr("disabled", true);
    }

    function unlockButtonsFunc() {
        $(".b_create").attr("disabled", false);
        $(".b_update").attr("disabled", false);
        $(".b_remove").attr("disabled", false);
    }

    function createFunc(obj) {

    }

    function selectFunc(obj) {
        unselectFunc();
        $(obj).addClass("selected");

        var data = obj.dataset;
        $('input[name="tf_create_parent_id"]').val(data.parentId);
        $('input[name="tf_update_id"]').val(data.id);
        $('input[name="tf_update_value"]').val(data.value);
        $('input[name="tf_update_parent_id"]').val(data.parentId);
        $('input[name="tf_remove_id"]').val(data.id);
        $('input[name="tf_remove_value"]').val(data.value);
        $('input[name="tf_remove_parent_id"]').val(data.parentId);
    }

    function unselectFunc() {
        $(".selected").removeClass("selected");
        clearDataFunc();
    }

    function clearDataFunc() {
        $('input[name="tf_create_parent_id"]').val(data.parentId);
        $('input[name="tf_update_id"]').val(data.id);
        $('input[name="tf_update_value"]').val(data.value);
        $('input[name="tf_update_parent_id"]').val(data.parentId);
        $('input[name="tf_remove_id"]').val(data.id);
        $('input[name="tf_remove_value"]').val(data.value);
        $('input[name="tf_remove_parent_id"]').val(data.parentId);
    }
</script>