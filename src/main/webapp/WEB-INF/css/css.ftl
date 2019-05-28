<style type="text/css">

    body {
        background-color: #69f0ae;
        font-family: sans-serif;
        font-size: 11pt;
        color: #333;
        margin: 0;
    }

    .container {
        width: 700px;
        margin: auto;
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .nodes, .tree, .options {
        background-color: #f0f0f0;
        border-radius: 10px;
        margin: 10px;
        padding: 12px;
    }

    .nodes {
        width: 300px;
        border-collapse: collapse;
    }

    #id_col_h, #value_col_h, #parent_id_col_h {
        background-color: #84ffff;
        border: 1px solid black;
        padding: 3px;
    }

    #id_col, #value_col, #parent_id_col {
        border: 1px solid black;
        padding: 3px;
    }

    .tree {
        width: 300px;
    }

    .options {
        width: 700px;
    }

    .table_nodes {
        width: 100%;
    }

    #id_col_h {
        width: 20%;
    }

    #value_col_h {
        width: 60%;
    }

    #parent_id_col_h {
        width: 20%;
    }

    .b_create, .b_remove, .b_update {
        width: 100px;
    }



    h1 {
        color: #a52a2a;
        font-size: 24pt;
        font-family: Georgia, Times, serif;
        font-weight: normal;
        width: 300px;
        margin: 10px;
    }
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
    input + label {
        content: "";
        display: inline-block;
        height: 16px;
        width: 16px;
        opacity: 0.7;
        background-size: 100%;
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
    .loading {
        background: url(https://raw.githubusercontent.com/duoxik/WebTree/master/src/main/webapp/WEB-INF/icons/load.gif) no-repeat;
    }
    .opened {
        background: url(https://raw.githubusercontent.com/duoxik/WebTree/master/src/main/webapp/WEB-INF/icons/minus.png) no-repeat;
    }
    .closed {
        background: url(https://raw.githubusercontent.com/duoxik/WebTree/master/src/main/webapp/WEB-INF/icons/plus.png) no-repeat;
    }

</style>