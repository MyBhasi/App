<%--
  Created by IntelliJ IDEA.
  User: anuj
  Date: 14/11/16
  Time: 7:05 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
   <meta name="layout"  content="sample_application">
</head>
<body>
<table>
 <tr>
     <img style="height:210px;width:354px;"
          src="${createLink(controller: "dashboard", action: "renderImage", params: [id: "${lt.id}"])}"/>
 </tr>
    <tr>

    </tr>
    <tr>

    </tr>

</table>
</body>
</html>