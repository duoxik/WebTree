<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>Tree</title>
    <#include "WEB-INF/css/style.ftl">
    <#include "WEB-INF/css/tree.ftl">
    <#include "WEB-INF/js/jquery.ftl">
    <#include "WEB-INF/js/script.ftl">
</head>
<body>


<H1>Tree nodes:</H1>
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

<H1>Tree:</H1>
<ul>
    <li>
        <input type="checkbox" id="id1" onclick="requestFunc(this)"><label for="id1"></label>
        <p class="node_text" data-id="1" data-value="ROOT" data-parent-id="Null" onclick="selectFunc(this)">ROOT</p>
        <ul id="ul_id1"></ul>
    </li>
</ul>

<br>

<H1>Options:</H1>
<table>
    <tr>
        <th></th>
        <th>id</th>
        <th>value</th>
        <th>parent_id</th>
    </tr>
    <tr>
        <td><button class="b_create">Create child</button></td>
        <td><input name="tf_create_id" type="text" value="#########" disabled /></td>
        <td><input name="tf_create_value" type="text" /></td>
        <td><input name="tf_create_parent_id" type="text" disabled /></td>
    </tr>
    <tr>
        <td><button class="b_update">Update node</button></td>
        <td><input name="tf_update_id" type="text" disabled /></td>
        <td><input name="tf_update_value" type="text" /></td>
        <td><input name="tf_update_parent_id" type="text" /></td>
    </tr>
    <tr>
        <td><button class="b_remove">Remove node</button></td>
        <td><input name="tf_remove_id" type="text" disabled /></td>
    </tr>
</table>

</body>
</html>