<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>Nodes tree</title>
    <#include "WEB-INF/css/style.ftl">
    <#include "WEB-INF/css/tree.ftl">
    <#include "WEB-INF/js/jquery.ftl">
    <#include "WEB-INF/js/getrequest.ftl">
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

<button onclick="requestFunc()">Request</button>

<br>

<table>
    <tr>
        <th>id</th>
        <th>value</th>
        <th>parent_id</th>
    </tr>
    <tbody id="t_body">

    </tbody>
</table>

<br>

<#--<ul>-->
<#--    <li>-->
<#--        <input type="checkbox" id="id1"><label for="id1">Root</label>-->
<#--        <ul>-->
<#--            <li>-->
<#--                <input type="checkbox" id="id2"><label for="id2">node1</label><ul>-->
<#--                    <li>-->
<#--                        <input type="checkbox" id="id4"><label for="id4">node_1_1</label>-->
<#--                    </li>-->
<#--                    <li>-->
<#--                        <input type="checkbox" id="id5"><label for="id5">node_1_2</label>-->
<#--                    </li>-->
<#--                </ul>-->
<#--            </li>-->
<#--            <li>-->
<#--                <input type="checkbox" id="id3"><label for="id3">node2</label><ul>-->
<#--                    <li>-->
<#--                        <input type="checkbox" id="id6"><label for="id6">node_2_1</label>-->
<#--                    </li>-->
<#--                    <li>-->
<#--                        <input type="checkbox" id="id7"><label for="id7">node_2_2</label>-->
<#--                    </li>-->
<#--                </ul>-->
<#--            </li>-->
<#--        </ul>-->
<#--    </li>-->
<#--</ul>-->

<br>

<ul>
    <li>
        <input type="checkbox" id="id1" onclick="requestFunc(this)"><label for="id1">Root</label>
        <ul id="ul_id1">

        </ul>
    </li>
</ul>

</body>
</html>