<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>Nodes tree</title>
    <#include "WEB-INF/css/style.ftl">
    <#include "WEB-INF/css/tree.ftl">
    <#include "WEB-INF/js/jquery.ftl">
    <#include "WEB-INF/js/getrequest.ftl">
    <#include "WEB-INF/js/tree.ftl">
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

    <div class="treeHTML">Root
        <div>Blog
            <details><summary></summary>
                <div>HTML</div>
                <div>CSS</div>
                <div>JavaScript</div>
            </details>
        </div>
        <div>Contacts</div>
    </div>

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

    <ul>
        <li>
            <input type="checkbox" id="chk1"><label for="chk1">Здесь подпункты</label>
            <ul>
                <li>
                    <input type="checkbox" id="chk2"><label for="chk2">Тоже можно раскрыть</label>
                    <ul>
                        <li>Пункт 1_1</li>
                        <li>Пункт 1_2</li>
                    </ul>
                </li>
                <li>Не раскрывается</li>
            </ul>
        </li>
        <li>Здесь нет подпунктов</li>
    </ul>

</body>
</html>