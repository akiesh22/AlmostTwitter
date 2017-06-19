<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="LoginTemplate">
    <title></title>
    <style>
    </style>
</head>
<body>
<div class="card"></div>
<div class="card">
    <h1 class="title">Login</h1>
    <g:if test="${errorMessage}">
        <div class="alert padding: 10px 0 10px 50px;">
            <span class="closebtn" onclick="this.parentElement.style.display='none';"><i class='fa fa-times'></i></span>
            <strong>${errorMessage} </strong>
        </div>
    </g:if>
    <g:form controller="user" action="login">
        <div class="input-container">
            <g:textField name="email" id="#{label}" required="required"></g:textField>
            <label for="#{label}">Email</label>
            <div class="bar"></div>
        </div>
        <div class="input-container">
            <g:passwordField name="password" id="#{label}" required="required"></g:passwordField>
            <label for="#{label}">Password</label>
            <div class="bar"></div>
        </div>
        <br>
        <div class="button-container">
            <button name="Login" value="Login"><span>Go</span></button>
        </div>
    </g:form>
</div>
<div class="card alt">
    <div class="toggle"></div>
    <h1 class="title">Register
        <div class="close"></div>
    </h1>
    <g:form controller="user" action="register">
        <div class="input-container">
            <g:textField name="email" id="#{label}" placeholder="Type A Valid Email Address" required="required"></g:textField>
            <div class="bar"></div>
        </div>
        <div class="input-container">
            <g:passwordField name="password" id="#{label}" placeholder="Password" required="required"></g:passwordField>
            <div class="bar"></div>
        </div>
        <div class="input-container">
            <g:passwordField name="password1" id="#{label}"  placeholder="Retype Password" required="required"></g:passwordField>
            <div class="bar"></div>
        </div>
        <div class="button-container">
            <button name="Login" value="Register"><span>Go</span></button>
        </div>
    </g:form>
</div>
</body>
</html>