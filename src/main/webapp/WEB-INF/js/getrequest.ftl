<script type="text/javascript">
    function requestFunc(obj) {
        $.ajax({
            url: window.location + '/showChildren/' + obj.id,
            type: 'GET',
            async: false,
            success: function(data) {
                $('#ul_' + obj.id).html(data);
            },
            error: function(e) {
                alert('Error ' + e);
            }
        });
    }
</script>