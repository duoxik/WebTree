<#list nodes as node>
    <li>
        <input type="checkbox" id="id${node.id}" onclick="requestFunc(this)"><label for="id${node.id}">${node.value}</label>
        <ul id="ul_id${node.id}">

        </ul>
    </li>
</#list>