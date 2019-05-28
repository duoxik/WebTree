<#list nodes as node>
    <li>
        <input type="checkbox" id="id${node.id}" onclick="openFolderFunc(this)" /><label class="closed" for="id${node.id}"></label>
        <p class="node_text" data-id="${node.id}" data-value="${node.value}" data-parent-id="${node.parent_id}" onclick="selectFunc(this)">${node.value}</p>
        <ul id="ul_id${node.id}"></ul>
    </li>
</#list>