<#list nodes as node>
    <tr>
        <td>${node.id}</td>
        <td>${node.value}</td>
        <td>${node.parent_id}</td>
    </tr>
</#list>