<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Delivery App</title>
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
                src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg"
                height="42" width="820"
                alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/></a>
    </div>
    <![endif]-->

    <script type="text/javascript">
        $(document).ready(function () {
            var selItem = localStorage.getItem("locales");
            $('#locales').val(selItem ? selItem : 'en');
            $("#locales").change(function () {
                var selectedOption = $('#locales').val();
                if (selectedOption) {
                    window.location.replace('?lang=' + selectedOption);
                    localStorage.setItem("locales", selectedOption);
                }
            });
        });
    </script>
</head>
<body style="min-height: 600px; overflow: auto;">
<div class="glob">
    <div style="width: 100%; height: 100%; position: fixed; left: 0px; top: 0px; overflow: hidden; z-index: -1;">
        <div id="bgStretch"
             style="position: absolute; z-index: -1; inset: 0px auto auto 0px; width: 1278.2px; height: 664px; opacity: 1;">
            <img src="images/gallery_big_01.jpg" alt=""
                 style="width: 100%; height: 100%; position: absolute; z-index: -1; left: 0px; top: 0px;"></div>
    </div>

    <div class="page_spinner" style="display: none;"><span></span></div>
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
                <div class="menuHolder">
                    <nav class="menu">
                        <ul id="menu">
                            <li class="active"><a href="#!/pageHome">
                                <div class="mText"><spring:message code='sidebar.home'/></div>
                            </a></li>
                            <li class="with_ul"><a href="#!/pageMc">
                                <div class="mText" style="opacity: 1;"><spring:message code='sidebar.shops'/></div>
                            </a></li>

                            <li><a href="#!/pageCoupons">
                                <div class="mText" style="opacity: 1;"><spring:message code='sidebar.coupons'/></div>
                            </a></li>

                            <security:authorize access="hasRole('ROLE_USER')">
                                <li><a href="#!/pageBucket">
                                    <div class="mText"><spring:message code='sidebar.bucket'/></div>
                                </a></li>
                            </security:authorize>
                            <li><a href="#!/pageCreate">
                                <div class="mText"><spring:message code='sidebar.create'/></div>
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
                    <li id="pageMc" style="left: 1700px; display: none;">
                        <div class="container_24">
                            <div class="grid_8 ">
                                <h2 class="centr">Shop</h2>
                                <div class="line-2"></div>
                                <dl id="accordion">
                                    <dt><a href="#!/pageMc">McDonald's<span></span></a></dt>
                                    <dt><a href="#!/pageKFC">KFC<span></span></a></dt>
                                </dl>
                            </div>
                            <div class="grid_16">
                                <h2 class="centr" style="margin-bottom: 10px">McDonald's</h2>
                                <div class="line-1 marg1"></div>
                                <ul id="mycarousel-3" class="jcarousel-skin-tango3">
                                    <c:forEach var="product" items="${products}">
                                        <c:if test="${product.category == 'Mc'}">
                                            <li>
                                                <a class="fancyPic2" rel="Appendix" href="images/image-blank.png"><span
                                                        class="zoomSp2"></span><img
                                                        src="data:image/jpg;base64,${product.encodedImage}"
                                                        alt="image" style="width:100%"></a>
                                                <h3 class="centr">${product.name}</h3>
                                                <ul class="list2">
                                                    <li><a href="#" class=""><strong>${product.information}</strong></a><span>...${product.price}$</span>
                                                    </li>
                                                </ul>

                                                <form:form action="${contextPath}/bucket" method="POST"
                                                           enctype="multipart/form-data">
                                                    <input type="hidden" value="${product.id}"
                                                           class="form-control" name="productId">
                                                    <input type="submit" class="button-add"
                                                           value="<spring:message code='bucket.add'/>">
                                                </form:form>
                                                <div class="clear"></div>
                                            </li>
                                        </c:if>
                                    </c:forEach>
                                </ul>
                            </div>

                            <div class="clear"></div>
                        </div>
                    </li>
                    <li id="pageKFC" style="left: 1700px; display: none;">
                        <div class="container_24">
                            <div class="grid_8 ">
                                <h2 class="centr">Shop</h2>
                                <div class="line-2"></div>

                                <dl id="accordion-1">
                                    <dt><a href="#!/pageMc">McDonald's<span></span></a></dt>
                                    <dt><a href="#!/pageKFC">KFC<span></span></a></dt>
                                </dl>
                            </div>
                            <div class="grid_16">
                                <h2 class="centr" style="margin-bottom: 10px">KFC</h2>
                                <div class="line-1 marg1"></div>
                                <ul id="mycarousel-2" class="jcarousel-skin-tango3">
                                    <c:forEach var="product" items="${products}">
                                        <c:if test="${product.category == 'KFC'}">
                                            <li>
                                                <a class="fancyPic2" rel="Appendix" href="images/image-blank.png"><span
                                                        class="zoomSp2"></span><img
                                                        src="data:image/jpg;base64,${product.encodedImage}"
                                                        alt="image" style="width:100%"></a>
                                                <h3 class="centr">${product.name}</h3>
                                                <ul class="list2">
                                                    <li><a href="#" class=""><strong>${product.information}</strong></a><span>...${product.price}$</span>
                                                    </li>
                                                </ul>

                                                <form:form action="${contextPath}/bucket" method="POST"
                                                           enctype="multipart/form-data">
                                                    <input type="hidden" value="${product.id}"
                                                           class="form-control" name="productId">
                                                    <input type="submit" class="button-add"
                                                           value="<spring:message code='bucket.add'/>">
                                                </form:form>
                                                <div class="clear"></div>
                                            </li>
                                        </c:if>
                                    </c:forEach>
                                </ul>
                            </div>

                            <div class="clear"></div>
                        </div>
                    </li>
                    <li id="pageCoupons" style="left: -1700px; display: none;">
                        <div class="container_24">
                            <div class="grid_24">
                                <h2 class="centr">recent events</h2>
                                <div class="line-1 marg1"></div>
                                <ul id="mycarousel-4" class="jcarousel-skin-tango4">
                                    <c:forEach var="product" items="${products}">
                                        <c:if test="${product.category == 'coupons'}">
                                            <li>
                                                <div class="wrap">
                                                    <img src="data:image/jpg;base64,${product.encodedImage}" class="img-indent" alt="">
                                                    <div class="extra-wrap">
                                                        <h3 class="marg5">${product.name}</h3>
                                                        <p class="date marg9"><strong>${product.price}$</strong></p>
                                                        <p class="">${product.information} </p>
                                                        </p>
                                                            <form:form action="${contextPath}/bucket" method="POST"
                                                                       enctype="multipart/form-data">
                                                                <input type="hidden" value="${product.id}"
                                                                       class="form-control" name="productId">
                                                                <input type="submit" class="button-add"
                                                                       value="<spring:message code='bucket.add'/>">
                                                            </form:form>
                                                    </div>
                                                </div>
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
                            <div class="grid_8 ">
                                <form id="form">
                                    <fieldset>
                                        <label class="name">
                                            <input type="text" value="Name:">
                                            <span class="error error-empty" style="display: none;">*This is not a valid name.</span><span
                                                class="empty error-empty" style="display: none;">*This field is required.</span>
                                        </label>

                                        <label class="email">
                                            <input type="tel" value="E-mail:">
                                            <span class="error error-empty" style="display: none;">*This is not a valid email address.</span><span
                                                class="empty error-empty" style="display: none;">*This field is required.</span>
                                        </label>

                                        <label class="phone">
                                            <input type="text" value="Phone:">
                                            <span class="error error-empty" style="display: none;">*This is not a valid phone number.</span><span
                                                class="empty error-empty" style="display: none;">*This field is required.</span>
                                        </label>

                                        <label class="message">
                                            <textarea>Message:</textarea>
                                            <span class="error" style="display: none;">*The message is too short.</span>
                                            <span class="empty" style="display: none;">*This field is required.</span>
                                        </label>

                                        <div class="btns">
                                            <a data-type="reset" class="button-1">clear</a>

                                            <form:form action="${contextPath}/bucket-send" method="POST"
                                                       enctype="multipart/form-data">
                                                <input type="hidden" value="${bucket.id}"
                                                       class="form-control" name="bucketId">
                                                <a data-type="submit" class="button-1">send</a>
                                            </form:form>

                                            <div class="clear"></div>
                                        </div>
                                        <div class="clear"></div>
                                    </fieldset>
                                    <div class="success" style="display: none;">Contact form submitted! <br><strong>We
                                        will be in touch
                                        soon.</strong>
                                    </div>
                                </form>
                            </div>
                            <div class="grid_16">
                                <div style="margin-left: 10%">
                                    <div class="w3-container">
                                        <table class="table table-striped"
                                               style="margin-top: 2%; padding: 2%; width:800px; height: 150px;">
                                            <thead>
                                            <tr style="text-align: center">
                                                <th><spring:message code='bucket.name'/></th>
                                                <th><spring:message code='bucket.description'/></th>
                                                <th><spring:message code='bucket.price'/></th>
                                                <th><spring:message code='bucket.image'/></th>
                                                <th><spring:message code='bucket.count'/></th>
                                                <th><spring:message code='bucket.date'/></th>
                                                <th><spring:message code='bucket.action'/></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach var="bucket" items="${bucketItems}">
                                                <tr>
                                                    <td>${bucket.product.name}</td>
                                                    <td>${bucket.product.information}</td>
                                                    <td>${bucket.product.price}$</td>
                                                    <td><img
                                                            src="data:image/jpg;base64,${bucket.product.encodedImage}"
                                                            alt="image" style="width:100%"></td>
                                                    <td><input type="number" value="1"></td>
                                                    <td>${bucket.purchaseDate}</td>
                                                    <form:form action="${contextPath}/bucket" method="GET"
                                                               enctype="multipart/form-data">
                                                        <input type="hidden" value="${bucket.id}"
                                                               class="form-control" name="bucketId">
                                                        <td><a href="bucket?id= ${bucket.id}"><spring:message
                                                                code='bucket.delete'/></a></td>
                                                    </form:form>
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
                                           enctype="multipart/form-data" style="margin:3%" id="form-create"
                                           class="centr">

                                    <div class="form-group">
                                        <input type="text" class="form-control" id="name" name="name"
                                               value="${product.name}"
                                               placeholder="<spring:message code='product.name'/>">
                                    </div>

                                    <div class="form-group">
                                        <input type="text" class="form-control" id="information" name="information"
                                               value="${product.information}"
                                               placeholder="<spring:message code='product.information'/>">
                                    </div>

                                    <div class="form-group">
                                        <input type="text" class="form-control" id="price" name="price"
                                               value="${product.price}"
                                               placeholder="<spring:message code='product.price'/>">
                                    </div>

                                    <div class="form-group">
                                        <input type="text" class="form-control" id="category" name="category"
                                               value="${product.category}"
                                               placeholder="<spring:message code='product.category'/>">
                                    </div>

                                    <div class="form-group">
                                        <input type="file" class="form-control" id="image" name="image"
                                               value="${product.image}"
                                               placeholder="<spring:message code='product.file'/>">
                                    </div>

                                    <button type="submit" class="button-add" style="margin: 5px;width: 310px;">
                                        <spring:message
                                                code='product.submit'/></button>

                                    <input type="hidden" name="${_csrf.parameterName}"
                                           value="${_csrf.token}"/>
                                </form:form>
                            </div>
                        </div>
                    </li>

                    <li id="pagePrivacy" style="left: -1700px; display: none;">
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
                    <li id="pageMore" style="left: -1700px; display: none;">
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
    <footer style="background-position: 0px 0px;">
        <div class="foot-bg">
            <div class="mainFooter">
                <div class="privHold">
                <pre class="textPrivacy"><span>Delivery app</span>|  2023  |  <a class="_link1"
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

<div id="fancybox-tmp"></div>
<div id="fancybox-loading">
    <div></div>
</div>
<div id="fancybox-overlay"></div>
<div id="fancybox-wrap">
    <div id="fancybox-outer">
        <div class="fancybox-bg" id="fancybox-bg-n"></div>
        <div class="fancybox-bg" id="fancybox-bg-ne"></div>
        <div class="fancybox-bg" id="fancybox-bg-e"></div>
        <div class="fancybox-bg" id="fancybox-bg-se"></div>
        <div class="fancybox-bg" id="fancybox-bg-s"></div>
        <div class="fancybox-bg" id="fancybox-bg-sw"></div>
        <div class="fancybox-bg" id="fancybox-bg-w"></div>
        <div class="fancybox-bg" id="fancybox-bg-nw"></div>
        <div id="fancybox-content"></div>
        <a id="fancybox-close"></a>
        <div id="fancybox-title"></div>
        <a href="javascript:" id="fancybox-left"><span class="fancy-ico" id="fancybox-left-ico"></span></a><a
            href="javascript:" id="fancybox-right"><span class="fancy-ico" id="fancybox-right-ico"></span></a></div>
</div>
</body>
</html>