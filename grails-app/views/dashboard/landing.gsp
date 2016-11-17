<%--
  Created by IntelliJ IDEA.
  User: anuj
  Date: 11/11/16
  Time: 2:32 PM
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
                <asset:image src="img/slider/3.jpg" alt="img"></asset:image>
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
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            <div class="aa-top-slider-single">
                %{--<asset:property  src="img/slider/2.jpg" alt="img"/>--}%
                <!-- Top slider cointent -->
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
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            <div class="aa-top-slider-single">
                %{--<img src="img/slider/1.jpg" alt="img">--}%
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
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            <div class="aa-top-slider-single">
                %{--<asset:property src="img/slider/5.jpg" alt="img"></asset:property>--}%
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
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            <div class="aa-top-slider-single">
                <img src="img/slider/4.jpg" alt="img">
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
            <!-- / Top slider single slide -->
            <!-- Top slider single slide -->
            <div class="aa-top-slider-single">
                <img src="img/slider/6.jpg" alt="img">
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
            <!-- / Top slider single slide -->
        </div>
    </div>
</section>
<!-- End slider  -->

<!-- Advance Search -->
<section id="aa-advance-search">
    <div class="container">
        <div class="aa-advance-search-area">
            <div class="form">
                <div class="aa-advance-search-top">
                    <div class="row">
                        <div class="text">
                            <g:if test="${err}">
                                <b>${err}</b>
                            </g:if>
                        </div>
                        <g:form controller="property" action="reterieve">
                            <div class="col-md-4">
                                <div class="aa-single-advance-search">

                                    <input type="text" name="city" placeholder="Type Your City">
                                </div>
                            </div>

                            <div class="col-md-2">
                                <div class="aa-single-advance-search">
                                    <g:select name="category" from="${['Commercial', 'Residential']}"
                                              noSelection="['': 'Category']">

                                    </g:select>
                                </div>
                            </div>

                            <div class="col-md-2">
                                <div class="aa-single-advance-search">
                                    <g:select name="pricerange" from="${['5-6', '6-7', '7-8']}"
                                              noSelection="['': 'Price Range(in million)']">

                                    </g:select>
                                </div>
                            </div>


                            <div class="col-md-2">
                                <div class="aa-single-advance-search">
                                    <input class="aa-search-btn" type="submit" value="Search">

                                </div>

                            </div>
                        </g:form>

                    </div>

                    <div class="row">
                        <section id="aa-properties">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="aa-properties-content">
                                            <!-- start properties content head -->
                                            %{--<--}%
                                            <!-- Start properties content body -->


                                            <div class="aa-properties-content-body">
                                                <ul class="aa-properties-nav">
                                                    <li>
                                                        <article class="aa-properties-item">
                                                            <a class="aa-properties-item-img" href="#">

                                                            </a>

                                                            <h1>

                                                                <myNamespace:ch val1="${list}" val2="${err}">
                                                                    ${it}

                                                                </myNamespace:ch></h1>

                                                            <g:each in="${list}" var="lt">

                                                                <h2><text color="Red">For${lt.propertyFor}</text></h2>

                                                                <div class="aa-properties-item-content">

                                                                    <div class="aa-properties-info">
                                                                        <g:if test="${lt.class == com.sample_application.home.Home}">
                                                                            <span><h1><b>${lt.bedRoom} Home</b></h1>
                                                                            </span></g:if>

                                                                        <g:else>
                                                                            <span><h1><b>Office Space</b> ${lt.size}Sq.Ft
                                                                            </h1></span>
                                                                        </g:else>

                                                                    </div>
                                                                    %{--<h1>Location:</h1>${lt.address},${lt.city},${lt.pincode}--}%


                                                                    <div class="aa-properties">

                                                                        <h1>Location:${lt.address},${lt.city},${lt.pincode}</h1>

                                                                        <h1>Contact:
                                                                            <myNamespace:user name="${lt.postedBy}">
                                                                                (${it}
                                                                                <sec:ifLoggedIn>
                                                                                    Contact:${com.sample_application.User.get(lt.postedBy.id).phoneNo}
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
                                                                %{--</div>--}%
                                                                </div>
                                                            </g:each>



                                                        %{--<div class="aa-properties-detial">--}%
                                                        %{--<span class="aa-price">--}%
                                                        %{--${lt..price}--}%
                                                        %{--</span>--}%
                                                        %{--<a class="aa-secondary-btn" href="#">View Details</a>--}%
                                                        %{--</div>--}%
                                                        </article>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div></div></div></div>

                        </section>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
</section>
</body>
</html>
