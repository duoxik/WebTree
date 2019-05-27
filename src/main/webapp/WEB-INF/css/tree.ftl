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
        height: 12px;
        width: 12px;
        background-size: 100%;
        background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAsAAAALCAIAAAAmzuBxAAAACXBIWXMAAAsSAAALEgHS3X78AAAAkElEQVQYlXWOvRWDQAyDv/DYK2wQSro8OkpGuRFcUjJCRmEE0TldCpsjPy9qzj7Jki62Pgh4vnqbbbEWuN+use/PlArwHccWGg780psENGFY6W4YgxZIAM339WmT3m397YYxxn6aASslFfVotYLTT3NwcuTKlFpNR2sdEak4acdKeafPlE2SZ7sw/1BEtX94AXYTVmyR94mPAAAAAElFTkSuQmCC) no-repeat;
    }
    input:checked + label:before{
        background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAsAAAALCAIAAAAmzuBxAAAACXBIWXMAAAsSAAALEgHS3X78AAAAeklEQVQYlX2PsRGDMAxFX3zeK9mAlHRcupSM4hFUUjJCRpI70VHIJr7D8BtJ977+SQ9Zf7isVG16WSQC0/D0OW/FqoBlDFkIVJ2xAhA8sI/NHbcYiFrPfI0fGklKagDx2F4ltdtaM0J9L3dxcVxi+zv62E+MwPs7c60dClRP6iug7wUAAAAASUVORK5CYII=) no-repeat;
    }
    .selected {
        color: red;
    }
    .not_selected {
        color: #333;
    }
    .tree_text {
        font-size: 20px;
        margin: 0px;
        margin-left: 7px;
        display: inline-block;
    }

</style>