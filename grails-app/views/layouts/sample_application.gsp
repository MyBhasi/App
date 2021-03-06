<%--
  Created by IntelliJ IDEA.
  User: anuj
  Date: 10/11/16
  Time: 4:44 PM
--%>

<%@ page import="com.sample_application.User" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><g:layoutTitle></g:layoutTitle></title>
    <asset:javascript src="theme/bootstrap.min.js"/>
    %{--<asset:javascript src="theme/custom.js"/>--}%
    %{--<asset:stylesheet href="theme/bootstrap.css"/>--}%
    %{--<asset:stylesheet href="theme/custom.min.css"/>--}%
    %{--<script  src="${resource(dir: 'js', file: 'jquery.min.js')}"></script>--}%
    %{--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--}%
    %{--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--}%


    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <script src="${resource(dir: 'js', file: 'jquery.min.js')}"></script>
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="home/bootstrap.js"></asset:javascript>
    <asset:javascript src="home/nuislider.js"></asset:javascript>
    <asset:javascript src="home/slick.js"></asset:javascript>
    <asset:javascript src="home/custom.js"></asset:javascript>
    <asset:stylesheet href="home/bootstrap.css"></asset:stylesheet>
    <asset:stylesheet href="application.css"/>
    <asset:stylesheet href="home/slick.css"></asset:stylesheet>
    <asset:stylesheet href="home/nouislider.css"></asset:stylesheet>
    <asset:stylesheet href="home/font-awesome"></asset:stylesheet>
    <asset:stylesheet href="home/style.css"></asset:stylesheet>
    <asset:stylesheet href="home/default-theme.css"></asset:stylesheet>
    %{--<asset:property src="img/"></asset:property>--}%
    <link href="https://fonts.googleapis.com/css?family=Vollkorn" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">
    %{--<link href="https://fonts.googleapis.com/css?family=Vollkorn" rel="stylesheet" type="text/css">--}%
    %{--<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">--}%
    <g:layoutHead/>

</head>


<body>

<section id="aa-menu-area">
    <nav class="navbar navbar-fixed-top main-navbar" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- LOGO -->
                <!-- Text based logo -->
                <a class="navbar-brand aa-logo"
                   href="${createLink(controller: "dashboard", action: "landing")}">Sample<span>Application</span></a>
                %{--<!-- Image based logo -->--}%
                %{--<a class="navbar-brand aa-logo-img" href="index.html"><asset:property src="img/logo.png"></asset:property></a>--}%
            </div>

            <div id="navbar" class="navbar-collapse collapse">
                <ul id="top-menu" class="nav navbar-nav navbar-right aa-main-nav">
                    <li class="active"><a href="${createLink(controller: "dashboard", action: "landing")}">HOME</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown"
                           href="${createLink(controller: "property", action: "rentProperties")}">Rent <span
                                class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="${createLink(controller: "property", action: "rentProperties", params: [property: 'commercial'])}">Commercial</a>
                            </li>
                            <li><a href="${createLink(controller: "property", action: "rentProperties", params: [property: 'residential'])}">Residential</a>
                            </li>
                        </ul>
                    </li>
                    %{--<li><a href="gallery.html">GALLERY</a></li>--}%
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="blog-archive.html">Sale<span
                                class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="${createLink(controller: "property", action: "saleProperties", params: [property: 'commercial'])}">Commercial</a>
                            </li>
                            <li><a href="${createLink(controller: "property", action: "saleProperties", params: [property: 'residential'])}">Residential</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <sec:ifLoggedIn>
                        <a href="${createLink(controller: "property", action: "postedProperty")}">PostedProperty</a>
                        </sec:ifLoggedIn>
                    </li>

                    <sec:ifLoggedIn>
                        <li class="dropdown">
                            <a class="dropdown-toggle"
                               data-toggle="dropdown">${User.get(sec.loggedInUserInfo(field: 'id')).firstName}<span
                                    class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="${createLink(controller: "user", action: "index")}">dashboard</a></li>
                                %{--<li><a href="${createLink(controller: "admin", action: "profile")}">profile</a></li>--}%
                                <li><a href="${createLink(controller: "logout")}">logout</a></li>
                            </ul>
                        </li>

                    </sec:ifLoggedIn>
                    <sec:ifNotLoggedIn>
                        <li><a href="${createLink(controller: "dashboard", action: "login")}">Sign In</a></li>
                    </sec:ifNotLoggedIn>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </nav>
</section>
<g:layoutBody></g:layoutBody>

</body>
</html>