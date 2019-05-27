<script type="text/javascript">
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
</script>