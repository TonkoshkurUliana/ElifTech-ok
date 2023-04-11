
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Big Dave's Butcher Shop</title>
    <meta charset="utf-8">
    <link href='../images/favicon.ico' rel='shortcut icon'>

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,400italic,700,800' rel='stylesheet'
          type='text/css'>

    <link rel="stylesheet" href="../css/reset.css">
    <link href="../css/grid.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" type="text/css" media="screen" href="../css/skin.css">
    <link rel="stylesheet" href="../css/jquery.fancybox-1.3.4.css">
    <script src="../js/jquery-1.7.1.js"></script>
    <script src="../js/scripts.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="js/html5.js"></script>
    <link rel="stylesheet" href="css/ie.css" type="text/css" media="all">
    <![endif]-->
    <!--[if lt IE 8]>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:800' rel='stylesheet' type='text/css'>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode"><img
                src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0"
                height="42" width="820"
                alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/></a>
    </div>
    <![endif]-->

    <script type="text/javascript">
        $(document).ready(function() {
            var selItem = localStorage.getItem("locales");
            $('#locales').val(selItem ? selItem : 'en');
            $("#locales").change(function() {
                var selectedOption = $('#locales').val();
                if (selectedOption) {
                    window.location.replace('?lang=' + selectedOption);
                    localStorage.setItem("locales", selectedOption);
                }
            });
        });
    </script>
</head>
<body>
<div class="glob">
    <div id="bgStretch"><img src="images/gallery_big_01.jpg" alt=""></div>

    <div class="page_spinner"><span></span></div>
    <div class="pagin">
        <ul>
            <li><a href="images/gallery_big_01.jpg"></a></li>
            <li><a href="images/gallery_big_02.jpg"></a></li>
            <li><a href="images/gallery_big_03.jpg"></a></li>
        </ul>
    </div>


    <!--header -->
    <header>
        <div class="headerHolder">
            <div class="container_24">

                <div class="logoHolder">
                    <h1><a href="#!/pageHome" id="logo">Wheatland</a></h1>
                    <p class="">people<br>service<br>meat</p>
                </div>
                <div class="menuHolder">
                    <nav class="menu">
                        <ul id="menu">
                            <li><a href="#!/pageHome">
                                <div class="mText"><spring:message code='sidebar.home'/></div>
                            </a></li>
                            <li class="with_ul"><a href="#!/pageAbout">
                                <div class="mText"><spring:message code='sidebar.about'/></div>
                            </a></li>
                            <li><a href="#!/pageDrinks">
                                <div class="mText"><spring:message code='sidebar.drinks'/></div>
                            </a></li>

                            <li class="margmenu"><a href="#!/pageMeats">
                                <div class="mText"><spring:message code='sidebar.meats'/></div>
                            </a></li>
                            <li><a href="#!/pageServices">
                                <div class="mText"><spring:message code='sidebar.services'/></div>
                            </a></li>
                            <li><a href="#!/pageCreate">
                                <div class="mText"><spring:message code='sidebar.create'/></div>
                            </a></li>
                            <li><a href="#!/pageBucket">
                                <div class="mText"><spring:message code='sidebar.bucket'/></div>
                            </a></li>
                            <li><a href="#!/pageContact">
                                <div class="mText"><spring:message code='sidebar.contacts'/></div>
                            </a></li>

                        </ul>
                    </nav>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </header>
    <!--header end-->


    <div class="main">
        <div class="center">
            <!--content -->
            <article id="content">

                <ul>
                    <li id="pageHome">
                        <div class="slideshow">
                            <div class="btnsHolder">
                                <a href="#" id="prev"><span></span></a>
                                <a href="#" id="next"><span></span></a>
                            </div>
                        </div>
                    </li>
                    <li id="pageAbout">
                        <div class="container_24">
                            <div class="grid_24">
                                <h2 class="centr">Welcome!</h2>
                                <div class="line-1 marg1"></div>
                            </div>
                            <div class="grid_24">
                                <p class="tright marg2">We can service or repair your motorcycle. Wash the bike at the
                                    car wash. We provide motorcycle school services.
                                    Choose the services you need and come to us, you can also reserve a time, make a
                                    pre-order or clarify the cost.</p>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </li>

                    <li id="pageDrinks">
                        <div class="container_24">
                            <div class="grid_24">
                                <h2 class="centr">drinks</h2>
                                <div class="line-1 marg1"></div>
                                <p class="centr marg2">Praesent vestibulum aenean nonummy hendrerit mauris. Hasellus
                                    porta. Fusce suscipit varius mi. Cum sociis natoque penatibus magnis dis parturient
                                    montes <br>nascetur ridiculus mus. Nulla dui. Fusce feugiat malesuada odio. Morbi
                                    nunc odio gravida. at cursus nec luctus a lorem. <br>
                                    Maecenas tristique orci ac sem. Duis ultricies pharetra magna. Donec accumsan
                                    malesuada orci. Donec sit amet eros. Lorem ipsum dolor sit amet, consect</p>
                                <ul id="mycarousel-3" class="jcarousel-skin-tango3">
                                        <c:forEach var="product" items="${products}">
                                            <c:if test="${product.category == 'drink'}">
                                    <li>
                                        <a class="fancyPic2" rel="Appendix" href="images/image-blank.png"><span
                                                class="zoomSp2"></span><img src="images/page4_img_05.png" alt=""></a>
                                        <h3 class="centr">${product.name}</h3>
                                        <ul class="list2">
                                            <li><a href="#" class=""><strong>${product.information}</strong></a><span>...${product.price}</span></li>
                                        </ul>

<%--                                        <security:authorize access="hasRole('USER')">--%>

                                            <form:form action="${contextPath}/bucket" method="POST"
                                                       enctype="multipart/form-data">
                                                <input type="hidden" value="${product.id}"
                                                       class="form-control" name="productId">
                                                <input type="submit" class="w3-button w3-block w3-dark-grey"
                                                       value="+ <spring:message code='bucket.add'/>">
                                            </form:form>
<%--                                        </security:authorize>--%>

                                        <div class="clear"></div>
                                    </li>
                                        </c:if>
                                    </c:forEach>
                                </ul>
                            </div>

                            <div class="clear"></div>
                        </div>
                    </li>
                    <li id="pageMeats">

                        <div class="container_24">
                            <div class="grid_15">
                                <h2 class="centr">main dining room</h2>
                                <div class="line-1 marg6"></div>
                                <p class="centr marg2">Hasellus porta. Fusce suscipit varius mi. Cum sociis natoque
                                    penatibus magnis dis parturient <br>montes nascetur ridiculus mus. Nulla dui. Fusce
                                    feugiat malesuada odio.<br> Morbi nunc odio gravida. at cursus nec luctus a lorem.
                                    Maecenas tristique orci ac sem. <br>Duis ultricies pharetra magna. </p>
                                <img src="images/page3_img_01.png" class="fleft marg5" alt="">
                                <img src="images/page3_img_02.png" class="fleft marg7" alt="">
                                <img src="images/page3_img_03.png" class="fleft marg7" alt="">

                                <div class="clear"></div>
                                <div class="box-1">
                                    <p class="tright">Breakfast 7:30 a.m. - 9:30 a.m.<br>Continental Breakfast 9:30 a.m.
                                        - 11:00 a.m.</p>

                                </div>
                                <div class="box-2">
                                    <p class="tleft">Luncheon 12:00 p.m. - 2:00 p.m.<br>Dinner Five-course 6:30 p.m. –
                                        8:45 p.m. </p>
                                </div>
                                <div class="clear"></div>

                            </div>
                            <div class="grid_8 prefix_1">
                                <h2 class="centr">menu</h2>
                                <div class="line-2"></div>

                                <dl id="accordion">
                                    <dt><a href="#">Breakfast Menu<span></span></a></dt>

                                    <dd>
                                        <div class="indent">
                                            <ul class="list1">
                                                <li><a href="#" class=" "><strong>Lorem ipsum dolor</strong></a><span>$12.45</span><em>&nbsp;</em>
                                                </li>
                                                <li><a href="#" class=" "><strong>Praesent vestibulum molestie</strong></a><span>$08.00</span><em>&nbsp;</em>
                                                </li>
                                                <li><a href="#" class=" "><strong>Aenean nonummy
                                                    hendrerit</strong></a><span>$15.25</span><em>&nbsp;</em></li>
                                                <li><a href="#" class=" "><strong>Vivamus eget nibh</strong></a><span>$10.43</span><em>&nbsp;</em>
                                                </li>
                                            </ul>
                                        </div>
                                    </dd>
                                    <dt><a href="#">dinner menu 1<span></span></a></dt>
                                    <dd>
                                        <div class="indent">
                                            <ul class="list1">
                                                <li><a href="#" class=" "><strong>Lorem ipsum dolor</strong></a><span>$12.45</span><em>&nbsp;</em>
                                                </li>
                                                <li><a href="#" class=" "><strong>Praesent vestibulum molestie</strong></a><span>$08.00</span><em>&nbsp;</em>
                                                </li>
                                                <li><a href="#" class=" "><strong>Aenean nonummy
                                                    hendrerit</strong></a><span>$15.25</span><em>&nbsp;</em></li>
                                                <li><a href="#" class=" "><strong>Vivamus eget nibh</strong></a><span>$10.43</span><em>&nbsp;</em>
                                                </li>
                                            </ul>
                                        </div>
                                    </dd>
                                    <dt><a href="#">dinner menu 2<span></span></a></dt>
                                    <dd>
                                        <div class="indent">
                                            <ul class="list1">
                                                <li><a href="#" class=" "><strong>Lorem ipsum dolor</strong></a><span>$12.45</span><em>&nbsp;</em>
                                                </li>
                                                <li><a href="#" class=" "><strong>Praesent vestibulum molestie</strong></a><span>$08.00</span><em>&nbsp;</em>
                                                </li>
                                                <li><a href="#" class=" "><strong>Aenean nonummy
                                                    hendrerit</strong></a><span>$15.25</span><em>&nbsp;</em></li>
                                                <li><a href="#" class=" "><strong>Vivamus eget nibh</strong></a><span>$10.43</span><em>&nbsp;</em>
                                                </li>
                                            </ul>
                                        </div>
                                    </dd>
                                    <dt><a href="#">dinner menu 3<span></span></a></dt>
                                    <dd>
                                        <div class="indent">
                                            <ul class="list1">
                                                <li><a href="#" class=" "><strong>Lorem ipsum dolor</strong></a><span>$12.45</span><em>&nbsp;</em>
                                                </li>
                                                <li><a href="#" class=" "><strong>Praesent vestibulum molestie</strong></a><span>$08.00</span><em>&nbsp;</em>
                                                </li>
                                                <li><a href="#" class=" "><strong>Aenean nonummy
                                                    hendrerit</strong></a><span>$15.25</span><em>&nbsp;</em></li>
                                                <li><a href="#" class=" "><strong>Vivamus eget nibh</strong></a><span>$10.43</span><em>&nbsp;</em>
                                                </li>
                                            </ul>
                                        </div>
                                    </dd>
                                    <dt><a href="#">children's menu<span></span></a></dt>
                                    <dd>
                                        <div class="indent">
                                            <ul class="list1">
                                                <li><a href="#" class=" "><strong>Lorem ipsum dolor</strong></a><span>$12.45</span><em>&nbsp;</em>
                                                </li>
                                                <li><a href="#" class=" "><strong>Praesent vestibulum molestie</strong></a><span>$08.00</span><em>&nbsp;</em>
                                                </li>
                                                <li><a href="#" class=" "><strong>Aenean nonummy
                                                    hendrerit</strong></a><span>$15.25</span><em>&nbsp;</em></li>
                                                <li><a href="#" class=" "><strong>Vivamus eget nibh</strong></a><span>$10.43</span><em>&nbsp;</em>
                                                </li>
                                            </ul>
                                        </div>
                                    </dd>
                                    <dt><a href="#">dessert menu<span></span></a></dt>
                                    <dd>
                                        <div class="indent">
                                            <ul class="list1">
                                                <li><a href="#" class=" "><strong>Lorem ipsum dolor</strong></a><span>$12.45</span><em>&nbsp;</em>
                                                </li>
                                                <li><a href="#" class=" "><strong>Praesent vestibulum molestie</strong></a><span>$08.00</span><em>&nbsp;</em>
                                                </li>
                                                <li><a href="#" class=" "><strong>Aenean nonummy
                                                    hendrerit</strong></a><span>$15.25</span><em>&nbsp;</em></li>
                                                <li><a href="#" class=" "><strong>Vivamus eget nibh</strong></a><span>$10.43</span><em>&nbsp;</em>
                                                </li>
                                            </ul>
                                        </div>
                                    </dd>
                                </dl>


                            </div>
                        </div>
                    </li>
                    <li id="pageServices">
                        <div class="container_24">
                            <div class="grid_24">
                                <h2 class="centr">recent events</h2>
                                <div class="line-1 marg1"></div>
                                <ul id="mycarousel-4" class="jcarousel-skin-tango4">
                                    <c:forEach var="product" items="${products}">
                                        <c:if test="${product.category == 'service'}">
                                    <li>
                                        <div class="wrap">
                                            <img src="images/page5_img_01.png" class="img-indent" alt="">
                                            <div class="extra-wrap">
                                                <h3 class="marg5">${product.name}</h3>
                                                <p class="date marg9"><strong>${product.price}$</strong></p>
                                                <p class="">${product.information} </p>
                                                </p>
                                            </div>
                                        </div>

                                        <security:authorize access="hasRole('USER')">

                                            <form:form action="${contextPath}/bucket" method="POST"
                                                       enctype="multipart/form-data">
                                                <input type="hidden" value="${product.id}"
                                                       class="form-control" name="productId">
                                                <input type="submit" class="w3-button w3-block w3-dark-grey"
                                                       value="+ <spring:message code='bucket.add'/>">
                                            </form:form>
                                        </security:authorize>

                                        <div class="clear"></div>
                                        </li>
                                        </c:if>
                                    </c:forEach>
                                </ul>
                            </div>

                            <div class="clear"></div>
                        </div>
                    </li>

                    <li id="pageBucket">
                        <div class="container_24">
                            <div class="grid_24">
                                <div style="margin-left: 10%">
                                    <div class="w3-container">
                                        <table class="table table-striped"
                                               style="margin-top: 2%; padding: 2%; width:800px; height: 150px;">
                                            <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th><spring:message code='bucket.name'/></th>
                                                <th><spring:message code='bucket.description'/></th>
                                                <th><spring:message code='bucket.price'/></th>
                                                <th><spring:message code='bucket.image'/></th>
                                                <th><spring:message code='bucket.date'/></th>
                                                <th><spring:message code='bucket.action'/></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach var="bucket" items="${bucketItems}">
                                                <tr>
                                                    <td>1${bucket.id}</td>
                                                    <td>1${bucket.productId}</td>
                                                    <td>1</td>
                                                    <td>1</td>
                                                    <td>1</td>
<%--                                                    <td><img--%>
<%--                                                            src="data:image/jpg;base64,${bucket.encoded_image}"--%>
<%--                                                            alt="image" style="width: 40%; height: 20%"></td>--%>
                                                    <td>${bucket.purchaseDate}</td>
                                                    <td><a href="bucket?id= ${bucket.id}"><spring:message code='bucket.delete'/></a></td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </li>


                    <li id="pageCreate">
                        <div class="container_24">
                            <div class="grid_24">
                                <h2 class="centr">Create product!</h2>

                                <form:form method="POST" action="${contextPath}/addProduct"
                                           enctype="multipart/form-data" style="margin:10%" id="form-create"
                                           class="centr">

                                    <div class="form-group">
                                        <input type="text" class="form-control" id="name" name="name"
                                               value="${product.name}" placeholder="<spring:message code='product.name'/>">
                                    </div>

                                    <div class="form-group">
                                        <input type="text" class="form-control" id="information" name="information"
                                               value="${product.information}" placeholder="<spring:message code='product.information'/>">
                                    </div>

                                    <div class="form-group">
                                        <input type="text" class="form-control" id="price" name="price"
                                               value="${product.price}" placeholder="<spring:message code='product.price'/>">
                                    </div>

                                    <div class="form-group">
                                        <input type="text" class="form-control" id="category" name="category"
                                               value="${product.category}" placeholder="<spring:message code='product.category'/>">
                                    </div>

                                    <div class="form-group">
                                        <input type="file" class="form-control" id="image" name="image"
                                               value="${product.image}" placeholder="<spring:message code='product.file'/>">
                                    </div>

                                    <button type="submit" class="btn btn-primary"><spring:message code='product.submit'/></button>

                                    <input type="hidden" name="${_csrf.parameterName}"
                                           value="${_csrf.token}"/>
                                </form:form>
                            </div>
                        </div>
                    </li>
                    <li id="pageContact">
                        <div class="container_24">
                            <div class="grid_15">
                                <h2 class="centr">how to find us</h2>
                                <div class="line-1 marg6"></div>
                                <figure class="google_map"></figure>
                                <dl>
                                    <dd class="pad1"><p class="">Hasellus porta. Fusce suscipit varius mi. Cum sociis
                                        natoque
                                        penatibus magnis dis parturient montes nascetur ridiculus mus. Nulla dui. Fusce
                                        feugiat
                                        malesuada odio. Morbi nunc odio gravida. at cursus nec luctus a lorem. </p></dd>
                                    <dd class=""><p class=""><strong>8901 Marmora Road,<br>Glasgow, D04 89GR.</strong>
                                    </p></dd>
                                    <dd><span>Freephone:</span>+1 800 559 6580</dd>
                                    <dd><span>Telephone:</span>+1 800 603 6035</dd>
                                    <dd><span>FAX:</span>+1 800 889 9898</dd>
                                    <dd>E-mail:&nbsp;<a href="#" class="link3">mail@demolink.org</a></dd>
                                </dl>

                            </div>
                            <div class="grid_8 prefix_1">
                                <h2 class="centr">feedback</h2>
                                <div class="line-2"></div>
                                <form id="form">

                                    <fieldset>
                                        <label class="name">
                                            <input type="text" value="Name:">
                                            <span class="error error-empty">*This is not a valid name.</span><span
                                                class="empty error-empty">*This field is required.</span> </label>

                                        <label class="email">
                                            <input type="tel" value="E-mail:">
                                            <span class="error error-empty">*This is not a valid email address.</span><span
                                                class="empty error-empty">*This field is required.</span> </label>

                                        <label class="phone">
                                            <input type="text" value="Phone:">
                                            <span class="error error-empty">*This is not a valid phone number.</span><span
                                                class="empty error-empty">*This field is required.</span> </label>

                                        <label class="message">
                                            <textarea>Message:</textarea>
                                            <span class="error">*The message is too short.</span> <span class="empty">*This field is required.</span>
                                        </label>

                                        <div class="btns">
                                            <a data-type="reset" class="button-1">clear</a><a data-type="submit"
                                                                                              class="button-1">send</a>
                                            <div class="clear"></div>
                                        </div>
                                        <div class="clear"></div>
                                    </fieldset>
                                    <div class="success">Contact form submitted! <br><strong>We will be in touch
                                        soon.</strong>
                                    </div>
                                </form>

                            </div>
                            <div class="clear"></div>
                        </div>
                    </li>
                    <li id="pagePrivacy">
                        <div class="container_24">
                            <div class="grid_24">
                                <h2 class="centr">privacy policy</h2>
                                <div class="line-1 marg1"></div>
                                <p class="marg2 centr"><strong>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
                                    Praesent
                                    vestibulum molestie lacus. </strong><br>Aenean nonummy hendrerit mauris. Phasellus
                                    porta. Fusce
                                    suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient montes,
                                    nascetur
                                    ridiculus mus. Nulla dui. Fusce feugiat malesuada odio. Morbi nunc odio, gravida at,
                                    cursus nec,
                                    luctus a, lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna.
                                    Donec accumsan
                                    malesuada orci. Donec sit amet eros. Lorem ipsum dolor sit amet, consectetuer
                                    adipiscing elit.
                                    Mauris fermentum dictum magna.
                                    Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementumvel, cursus
                                    eleifend, elit.
                                    Aenean auctor wisi et urna.</p>
                                <p class="centr"><strong>Praesent vestibulum molestie lacus. </strong><br>Aenean nonummy
                                    hendrerit
                                    mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et
                                    magnis dis
                                    parturient montes, nascetur ridiculus mus. Nulla dui. Fusce feugiat malesuada odio.
                                    Morbi nunc
                                    odio, gravida at, cursus nec, luctus a, lorem. Maecenas tristique orci ac sem. Duis
                                    ultricies
                                    pharetra magna. Donec accumsan malesuada orci. Donec sit amet eros. Lorem ipsum
                                    dolor sit amet,
                                    consectetuer adipiscing elit. Mauris fermentum dictum magna. Sed laoreet aliquam
                                    leo. Ut tellus
                                    dolor, dapibus eget, elementumvel, cursus eleifend, elit. Aenean auctor wisi et
                                    urna.</p>
                                <p class="centr"><strong>Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu
                                    lacus. </strong><br>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
                                    Praesent
                                    vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce
                                    suscipit
                                    varius mi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur
                                    ridiculus mus.
                                    Nulla dui. Fusce feugiat malesuada odio.<br>
                                    Morbi nunc odio, gravida at, cursus nec, luctus a, lorem. Maecenas tristique orci ac
                                    sem. Duis
                                    ultricies pharetra magna. Donec accumsan malesuada orci. Donec sit amet eros. Lorem
                                    ipsum dolor
                                    sit amet, consectetuer adipiscing elit. Mauris fermentum dictum magna. </p>

                                <p class="centr"><a href="#" class="link3">mail@demolink.org</a></p>
                            </div>
                        </div>
                    </li>
                    <li id="pageMore">
                        <div class="container_24">
                            <div class="grid_24">
                                <h2 class="centr">Lorem ipsum</h2>
                                <div class="line-1 marg1"></div>
                                <p class="marg2 centr"><strong>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
                                    Praesent
                                    vestibulum molestie lacus. </strong><br>Aenean nonummy hendrerit mauris. Phasellus
                                    porta. Fusce
                                    suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient montes,
                                    nascetur
                                    ridiculus mus. Nulla dui. Fusce feugiat malesuada odio. Morbi nunc odio, gravida at,
                                    cursus nec,
                                    luctus a, lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna.
                                    Donec accumsan
                                    malesuada orci. Donec sit amet eros. Lorem ipsum dolor sit amet, consectetuer
                                    adipiscing elit.
                                    Mauris fermentum dictum magna.
                                    Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementumvel, cursus
                                    eleifend, elit.
                                    Aenean auctor wisi et urna.</p>
                                <p class="centr"><strong>Praesent vestibulum molestie lacus. </strong><br>Aenean nonummy
                                    hendrerit
                                    mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et
                                    magnis dis
                                    parturient montes, nascetur ridiculus mus. Nulla dui. Fusce feugiat malesuada odio.
                                    Morbi nunc
                                    odio, gravida at, cursus nec, luctus a, lorem. Maecenas tristique orci ac sem. Duis
                                    ultricies
                                    pharetra magna. Donec accumsan malesuada orci. Donec sit amet eros. Lorem ipsum
                                    dolor sit amet,
                                    consectetuer adipiscing elit. Mauris fermentum dictum magna. Sed laoreet aliquam
                                    leo. Ut tellus
                                    dolor, dapibus eget, elementumvel, cursus eleifend, elit. Aenean auctor wisi et
                                    urna.</p>
                                <p class="centr"><strong>Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu
                                    lacus. </strong><br>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
                                    Praesent
                                    vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce
                                    suscipit
                                    varius mi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur
                                    ridiculus mus.
                                    Nulla dui. Fusce feugiat malesuada odio.<br>
                                    Morbi nunc odio, gravida at, cursus nec, luctus a, lorem. Maecenas tristique orci ac
                                    sem. Duis
                                    ultricies pharetra magna. Donec accumsan malesuada orci. Donec sit amet eros. Lorem
                                    ipsum dolor
                                    sit amet, consectetuer adipiscing elit. Mauris fermentum dictum magna. </p>

                            </div>
                        </div>
                    </li>
                </ul>
            </article>
            <!--content end-->
        </div>
    </div>


    <!--footer -->
    <footer>
        <div class="foot-bg">
            <div class="mainFooter">
                <div class="privHold">
                <pre class="textPrivacy"><span>Big Dave's Butcher Shop</span>|  2023  |  <a class="_link1"
                                                                                            href="#!/pagePrivacy">Privacy Policy</a>&nbsp;
                    <!-- {%FOOTER_LINK} --></pre>
                </div>
            </div>
        </div>
    </footer>
    <!--footer end-->
</div>
<script>
    $(window).load(function () {
        $('.page_spinner').fadeOut();
        $('body').css({overflow: 'auto', 'min-height': '568px'})
    })
</script>
<!-- Coded by Hunter -->
</body>
</html>