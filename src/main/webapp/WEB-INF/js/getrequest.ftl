<script type="text/javascript">
    function requestFunc() {


        $.ajax({
            url: window.location + '/showChildren/1',
            type: 'GET',
            async: false,
            success: function(data) {
                //alert('SUCCESS' + data);
                // var json = "<h4>Ajax Response</h4><pre>"
                //     + JSON.stringify(data) + "</pre>";
                $('#t_body').html(data);
            },
            error: function(e) {
                alert('Error ' + e);
            }
        });

        // $.getJSON(window.location + '/showChildren/1', function(data) {
        //     //data is the JSON string
        //     alert('SUCCESS');
        //     var json = "<h4>Ajax Response</h4><pre>"
        //                 + JSON.stringify(data) + "</pre>";
        //
        //     var obj = JSON.parse(data);
        //     alert(obj.var1 + ' ' + obj.var2);
        //     $('#navcontainer').html(json);
        // });
    }
</script>