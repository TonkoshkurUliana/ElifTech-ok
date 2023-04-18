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

    <title>Log in with your account</title>
<%--    <link rel="stylesheet" href="../css/reset.css">--%>
    <link href="../css/grid.css" rel="stylesheet" type="text/css"/>
<%--    <link rel="stylesheet" href="../css/style.css">--%>
    <link rel="stylesheet" type="text/css" media="screen" href="../css/skin.css">
    <link type="text/css" href="../css/login.css" rel="stylesheet">
<%--    <link--%>
<%--            href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"--%>
<%--            rel="stylesheet" id="bootstrap-css">--%>
    <script
            src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script
            src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


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

<body style="font-family: 'PT Sans Narrow'; background: #0B0B0B url('data:image/gif;base64,R0lGODlhLwAvALMAAAgICAsNDBgYGh0eIBITFQsLDRAQECMnKA0LDBMXGBMVFBkZISEhIxAIEAoODwAAACH5BAAHAP8ALAAAAAAvAC8AAAT/8JhJqxkqK2sE41UiglMCnGgKOKpaEG0aBDHqFHiu58Du/0DeyeDaAWZIWi8YjBGXzKg0+Jxar7gqdsvUcr87L3gsHn/L5i06fR2cfCg3beZzQ3mBSXIfgN2FTyg+fkw1Jyx/OCp8M4lGhkNvcHtFbGgnATqVa0BQAJyKkIhwnTygRmyaoJ8xY54GTZQxiJJXn00yqUYEuEqGgY4FkAlRvMK1OQpBSEwCUQqMScpj02TIW5DZmNqQsJ2yKEnYOqdpi5mK5bqKptedTu5N7cFTa4Jg91yVqvE1+tcoCD064iuGQGwC3GECh6KDwk/egBzkou4HK3pSKsLR+IMjP4zrKTbGC9nJ47qLJK2gTCnlViE6X/IJGzjynS8hIIX5CdfoULZAOAkWVBEBADs=')">
<div class="wrapper fadeInDown">
    <div id="formContent">
        <div class="fadeIn first">
            <%--            <img src="https://userresearch.google.com/images/team_graphic.png"--%>
            <%--                 id="icon" alt="Login icon" />--%>
        </div>

        <form method="POST" action="${contextPath}/login" class="form-signin">
            <h1 class="form-heading"><spring:message code="login.title"/></h1>


            <div class="form-group ${error != null ? 'has-error' : ''}">
                <span>${message}</span> <input name="email" type="text"
                                               placeholder="<spring:message code='login.email'/>" class="fadeIn second"
                                               autofocus="true"/> <input
                    name="password" type="password" placeholder="<spring:message code='login.password'/>"
                    class="fadeIn third "/> <span>${error}</span> <input
                    type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                <input class="fadeIn fourth" type="submit" value="<spring:message code='login.signin'/>"/>
            </div>

        </form>

        <div>
            <fieldset style="border-color: rgb(0 0 0 / 0%)">
                <label><spring:message code="login.choose_language"/></label> <select
                    id="locales">
                <option value="en"><spring:message code='login.english'/></option>
                <option value="ua"><spring:message code='login.ukrainian'/></option>

            </select>
            </fieldset>
        </div>

            <!-- Remind Passowrd -->
            <div id="formFooter">
                <a class="underlineHover" href="${contextPath}/registration"><spring:message
                        code='login.create_account'/></a>
            </div>

    </div>
</div>

</body>
</html>