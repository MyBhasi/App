<%--
  Created by IntelliJ IDEA.
  User: anuj
  Date: 13/11/16
  Time: 11:44 AM
--%>

<%@ page import="com.sample_application.User" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="sample_application">
    <title></title>
</head>

<body>

<section id="aa-slider">
    <div class="aa-slider-area">
        <!-- Top slider -->
        <div class="aa-top-slider">
            <!-- Top slider single slide -->
            <div class="aa-top-slider-single">
                <asset:image src="img/slider/5.jpg" alt="img"></asset:image>
                <!-- Top slider content -->
                <div class="aa-top-slider-content">
                <span class="aa-top-slider-catg">Duplex</span>
                <h2 class="aa-top-slider-title">1560 Square Feet</h2>
                <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>South Beach, Miami (USA)</p>
                <span class="aa-top-slider-off">30% OFF</span>
                <p class="aa-top-slider-price">$460,000</p>
                <a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>
                </div>
                <!-- / Top slider content -->
            </div>
                   </div>
    </div>
</section>
<section id="aa-properties">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="aa-properties-content">

                    <div class="aa-properties-content-body">
                        <ul class="aa-properties-nav">
                            <li>
                                <article class="aa-properties-item">
                                    <a class="aa-properties-item-img" href="#">

                                    </a>

                                    <h2><text color="Red">For Rent</text></h2>

                                    <div class="aa-properties-item-content">
                                        <g:each in="${list}" var="lt">
                                            <div class="aa-properties-info">
                                                <g:if test="${lt.class == com.sample_application.home.Home}">
                                                    <span><h1><b>${lt.bedRoom} Home</b></h1></span></g:if>

                                                <g:else>
                                                    <span><h1><b>Office Space</b> ${lt.size}Sq.Ft</h1></span>
                                                </g:else>

                                            </div>
                                        %{--<h1>Location:</h1>${lt.address},${lt.city},${lt.pincode}--}%


                                            <div class="aa-properties">

                                                <h1>Location:${lt.address},${lt.city},${lt.pincode}</h1>
                                               <table>
                                                    <tr>
                                                        <g:if test="${lt.class==com.sample_application.office.Office}">
                                                            <h1>CafeteriaFacility:${lt?.cafeteriaAvailability=='true'?'yes':'No'}</h1>
                                                        </g:if>
                                                        <g:else><h1>Facing: ${lt?.facing}</h1></g:else>
                                                    </tr>
                                                    <tr>
                                                       <h1>Date Posted: <g:formatDate format="yyyy-MM-dd" date="${lt?.dateCreated}"></g:formatDate></h1>
                                                    </tr>

                                                </table>


                                                <h1>Contact:
                                                    <myNamespace:user name="${lt.postedBy}">
                                                        (${it}
                                                        <sec:ifLoggedIn>
                                                            ContactName:${User.get(lt.postedBy.id).firstName}
                                                            ContactNo.:${User.get(lt.postedBy.id).phoneNo}
                                                        </sec:ifLoggedIn>

                                                    </myNamespace:user></h1>


                                                <div class="aa-properties-detial">
                                                    <h1><span class="aa-price">
                                                        Price:${lt.price}Rs
                                                    </span></h1>
                                                    <br>

                                                </div>
                                                <img style="height:210px;width:354px;"
                                                     src="${createLink(controller: "dashboard", action: "renderImage", params: [id: "${lt.id}"])}"/>

                                            </div><!-- /example -->
                                        %{--</div>--}%
                                        %{--</div>--}%</g:each>
                                    </div>



                                </article>
                            </li>
                        </ul>
                    </div>
                </div></div></div></div>

</section>


</body>
</html>