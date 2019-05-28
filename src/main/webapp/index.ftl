<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>Tree</title>
    <#include "WEB-INF/css/css.ftl">
    <#include "WEB-INF/js/jquery.ftl">
    <#include "WEB-INF/js/js.ftl">
</head>
<body>
<div class="wrap">
    <div class="container">
        <div class="nodes">
            <H1>List nodes:</H1>
            <table class="table_nodes">
                <tr>
                    <th id="id_col_h">id</th>
                    <th id="value_col_h">value</th>
                    <th id="parent_id_col_h">parent_id</th>
                </tr>
                <#list nodes as node>
                    <tr>
                        <td id="id_col">${node.id}</td>
                        <td id="value_col">${node.value}</td>
                        <td id="parent_id_col">${node.parent_id}</td>
                    </tr>
                </#list>
            </table>
        </div>

        <div class="tree">
            <H1>Tree:</H1>
            <ul>
                <li>
                    <input type="checkbox" id="id1" onclick="openFolderFunc(this)"/><label class="closed" for="id1"></label>
                    <p class="node_text" data-id="1" data-value="ROOT" data-parent-id="Null" onclick="selectFunc(this)">ROOT</p>
                    <ul id="ul_id1"></ul>
                </li>
            </ul>
        </div>

        <div class="options">
            <H1>Options:</H1>
            <table>
                <tr>
                    <th></th>
                    <th>id</th>
                    <th>value</th>
                    <th>parent_id</th>
                </tr>
                <tr>
                    <td>Selected node:</td>
                    <td><input name="s_node_id" type="text" disabled /></td>
                    <td><input name="s_node_value" type="text" disabled/></td>
                    <td><input name="s_node_parent_id" type="text" disabled /></td>
                </tr>
            </table>

            <table>
                <tr>
                    <td><button class="b_create" onclick="createNodeFunc()">Create child</button></td>
                    <td>value:<input name="cr_node_value" type="text" /></td>
                </tr>
                <tr>
                    <td><button class="b_update" onclick="updateNodeFunc()">Update node</button></td>
                    <td>value:<input name="up_node_value" type="text" /></td>
                    <td>parent_id:<input name="up_node_parent_id" type="text" /></td>
                </tr>
                <tr>
                    <td><button class="b_remove" onclick="removeNodeFunc()">Remove node</button></td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>