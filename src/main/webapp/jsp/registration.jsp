<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    <link type="text/css" href="../css/login.css" rel="stylesheet">
    <script
            src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script
            src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    <spring:message code="register.fisrt_name" var="placeholder_first_name"/>
    <spring:message code="register.last_name" var="placeholder_last_name"/>
    <spring:message code="register.password" var="placeholder_password"/>
    <spring:message code="register.email" var="placeholder_email"/>

</head>

<body style="font-family: 'PT Sans Narrow'; background: #0B0B0B url('data:image/gif;base64,R0lGODlhLwAvALMAAAgICAsNDBgYGh0eIBITFQsLDRAQECMnKA0LDBMXGBMVFBkZISEhIxAIEAoODwAAACH5BAAHAP8ALAAAAAAvAC8AAAT/8JhJqxkqK2sE41UiglMCnGgKOKpaEG0aBDHqFHiu58Du/0DeyeDaAWZIWi8YjBGXzKg0+Jxar7gqdsvUcr87L3gsHn/L5i06fR2cfCg3beZzQ3mBSXIfgN2FTyg+fkw1Jyx/OCp8M4lGhkNvcHtFbGgnATqVa0BQAJyKkIhwnTygRmyaoJ8xY54GTZQxiJJXn00yqUYEuEqGgY4FkAlRvMK1OQpBSEwCUQqMScpj02TIW5DZmNqQsJ2yKEnYOqdpi5mK5bqKptedTu5N7cFTa4Jg91yVqvE1+tcoCD064iuGQGwC3GECh6KDwk/egBzkou4HK3pSKsLR+IMjP4zrKTbGC9nJ47qLJK2gTCnlViE6X/IJGzjynS8hIIX5CdfoULZAOAkWVBEBADs=')">
<div class="wrapper fadeInDown">
    <div id="formContent">
        <!-- Tabs Titles -->

        <!-- Icon -->
        <div class="fadeIn first">
            <%--            <img src="https://userresearch.google.com/images/team_graphic.png"--%>
            <%--                 id="icon" alt="Login icon" />--%>
        </div>

        <form:form method="POST" modelAttribute="userForm" class="form-signin">
            <h1 class="form-heading"><spring:message code="register.title"/></h1>

                        <div class="form-group ${error != null ? 'has-error' : ''}">
                            <span>${message}</span>
                            <input name="firstName" type="text"
                                   placeholder="<spring:message code='register.fisrt_name'/>" class="fadeIn first"
                                   autofocus="true"/>
                            <input
                                    name="lastName" type="text" placeholder="<spring:message code='register.last_name'/>"
                                    class="fadeIn second "/> <span>${error}</span>

                            <input name="email" type="text"
                                                           placeholder="<spring:message code='register.email'/>" class="fadeIn third"
                                                           autofocus="true"/>
                            <input
                                name="password" type="password" placeholder="<spring:message code='register.password'/>"
                                class="fadeIn fourth "/> <span>${error}</span>
                            <input
                                type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                            <input class="fadeIn fourth" type="submit" value="<spring:message code='register.register'/>"/>
                        </div>

        </form:form>

    </div>
</div>

</body>


</html>