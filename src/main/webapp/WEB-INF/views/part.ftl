<#list nodes as node>
    <li>
        <input type="checkbox" id="id${node.id}" onclick="requestFunc(this)"><label for="id${node.id}"></label>
        <p class="node_text" id="id${node.id}" onclick="selectFunc(this)">${node.value}</p>
        <ul id="ul_id${node.id}"></ul>
    </li>
</#list>