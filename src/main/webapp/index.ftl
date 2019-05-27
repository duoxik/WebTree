<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>Nodes tree</title>
    <#include "WEB-INF/css/style.ftl">
    <#include "WEB-INF/css/tree.ftl">
    <#include "WEB-INF/js/jquery.ftl">
    <#include "WEB-INF/js/getRequest.ftl">
    <#include "WEB-INF/js/selectItem.ftl">
</head>
<body>


<H1>Nodes tree:</H1>
<table>
    <tr>
        <th>id</th>
        <th>value</th>
        <th>parent_id</th>
    </tr>
    <div>
        <#list nodes as node>
            <tr>
                <td>${node.id}</td>
                <td>${node.value}</td>
                <td>${node.parent_id}</td>
            </tr>
        </#list>
    </div>
</table>

<br>

<ul>
    <li>
        <input type="checkbox" id="id1" onclick="requestFunc(this)"><label for="id1"></label>
        <p class="tree_text not_selected" id="id1" onclick="selectFunc(this)">ROOT</p>
        <ul id="ul_id1"></ul>
    </li>
</ul>

</body>
</html>