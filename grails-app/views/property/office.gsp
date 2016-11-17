<%--
  Created by IntelliJ IDEA.
  User: anuj
  Date: 17/11/16
  Time: 5:20 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<tr>
<img style="height:210px;width:354px;"
     src="${createLink(controller: "dashboard", action: "renderImage", params: [id: "${lt.id}"])}"/></tr>
<tr><h1><tr>${lt?.size}</tr></h1></tr>
<tr>city:${lt?.city}</tr>
<tr>address:${lt?.address}</tr>
<tr>landmark:${lt?.landMark}</tr>
<tr>${lt?.price}</tr>
%{--<td>st.propertyType</td>--}%
<tr>${lt?.floorNo}</tr>
<tr>${lt?.parkingFacility}</tr>
<tr>${lt?.cafeteriaAvailability}</tr>
%{--<td>${st?.dateCreated}</td>--}%
<tr><g:formatDate format="yyyy-MM-dd" date="${st?.dateCreated}"/></tr>
%{--<tr>contact:</tr>--}%
</body>
</html>