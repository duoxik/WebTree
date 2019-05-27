<style type="text/css">

    li, ul{
        list-style: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
    }
    li ul{
        margin-left: 16px;
        height: 0px;
    }
    li input{
        display: none;
    }
    li input:checked ~ ul {
        height: auto;
    }
    input + label:before {
        content: "";
        display: inline-block;
        height: 16px;
        width: 16px;
        opacity: 0.7;
        background-size: 100%;
        background: url(https://raw.githubusercontent.com/duoxik/WebTree/master/src/main/webapp/WEB-INF/icons/plus.png) no-repeat;
    }
    input:checked + label:before{
        background: url(https://raw.githubusercontent.com/duoxik/WebTree/master/src/main/webapp/WEB-INF/icons/minus.png) no-repeat;
    }
    .selected {
        color: red;
    }
    .node_text {
        font-size: 20px;
        margin: 0px;
        margin-left: 7px;
        display: inline-block;
    }

</style>