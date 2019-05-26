<style type="text/css">

    li, ul{
        list-style:none;
        margin:0;
        padding:0;
        overflow:hidden;
    }
    li ul{
        margin-left:16px;
        height:0px;
    }
    li input{
        display:none;
    }
    li input:checked ~ ul {
        height:auto;
    }
    input + label:before {
        content:"";
        display:inline-block;
        height:16px;
        width:16px;
        background-image:url(/WEB-INF/resources/plus.png)
        no-repeat 0px 5px;
    }
    input:checked + label:before{
        background-image:url(/WEB-INF/resources/minus.png)
        no-repeat 0px 5px;
    }

</style>