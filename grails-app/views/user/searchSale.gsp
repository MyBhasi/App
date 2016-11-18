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
<div class="container">
   <div class="row">
   <g:form class="form-group">
    <div class="col-sm-2">
        <label>Area</label>
        <input type="text"  class="text" placeholder="enter  area" name="area" >
    </div>
       <div class="col-sm-2">
           <label>Area</label>
           <g:select name="category" from="${['Commercial', 'Residential']}"
                     noSelection="['': 'Category']">

           </g:select>
       </div>

       <div class="col-sm-2">
<g:select name="pricerange" from="${['5-10', '10-15', '15-20']}"
          noSelection="['': 'Price Range(in million)']"/>
       </div>

       <div class="col-sm-2">
           <input class="aa-search-btn" type="submit" value="Search">
       </div>
    </g:form>
   </div>
</div>
</body>
</html>