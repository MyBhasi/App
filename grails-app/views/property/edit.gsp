<%--
  Created by IntelliJ IDEA.
  User: anuj
  Date: 16/11/16
  Time: 3:15 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <asset:javascript src="theme/bootstrap.min.js"/>
    <asset:javascript src="theme/custom.css"/>
    <asset:stylesheet href="theme/bootstrap.css"/>
    <asset:stylesheet href="theme/custom.min.css"/>
    <script  src="${resource(dir: 'js', file: 'jquery.min.js')}"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <meta name="layout" content="sample_application">
    <title></title>
</head>

<body>
<section id="aa-slider">
    <div class="container">
        <div class="aa-advance-search-area">
            <div class="form-group">
                <div class="aa-advance-search-top">


                        </div></div></div>

            </div>

        </div>
    </div>
</div>
</div>
</section>
<section id="aa-advance-search">
    <div class="container">
        <div class="row">

            <div class="col-lg-6 col-lg-offset-1" >
                <div class=" well bs-component">
                    <g:if test="${officeCO?.class==com.officeCO.OfficeCO}">
                    <g:form method="post" class="bs-component" enctype="multipart/form-data" id="${id}" controller="property"
                    action="updateOffice">
                        <g:hiddenField name="id" value="${id}" />
                    <g:render template="template3"  bean="${officeCO}"></g:render>
                    <div class="form-group">
                    <g:actionSubmit class="btn btn-primary" action="updateOffice" id="${id}" value="updated"></g:actionSubmit>

                    </div>
                        </g:form>
                    </g:if>
<g:if test="${homeCO?.class==com.home.HomeCO}">

<g:form method ="post" class="bs-component"  enctype="multipart/form-data"  controller="property" action="updateHome">
    <g:hiddenField name="id" value="${id}" />
                    <g:render template="template2" bean="${homeCO}" ></g:render>
<div class="form-group">

<g:actionSubmit class="btn btn-primary"   action="updateHome"  value="updated" ></g:actionSubmit>

</div>
    </g:form>
    </g:if>


                </div>
                    </div>
            </div>


        </div>
    </div>
    </section>
</body>
</html>