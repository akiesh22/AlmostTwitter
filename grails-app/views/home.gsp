<%--
  Created by IntelliJ IDEA.
  User: Ganes
  Date: 21/02/2017
  Time: 23:33
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="HomeTemplate">
</head>

<body>
<g:render template="/templates/header"/>

<!-- Navbar on small screens -->

<div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:51px">
    <ul class="w3-navbar w3-left-align w3-large w3-theme">
        <li><a class="w3-padding-large" href="#">Link 1</a></li>
        <li><a class="w3-padding-large" href="#">Link 2</a></li>
        <li><a class="w3-padding-large" href="#">Link 3</a></li>
        <li><a class="w3-padding-large" href="#">My Profile</a></li>
    </ul>
</div>

<!-- Page Container -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">
    <!-- The Grid -->
    <div class="w3-row">
        <!-- Left Column -->

        <div class="w3-col m3">
            <g:render template="/templates/leftColumn"/>
            <!-- End Left Column -->
        </div>

        <!-- Middle Column -->
        <div class="w3-col m6">
            <g:render template="/templates/middleColumn"/>
        </div>
        <!-- Right Column -->

        <div class="w3-col m3">
            <g:render template="/templates/rightColumn"/>
            <!-- End Right Column -->
        </div>
        <!-- End Grid -->
    </div>
    <!-- End Page Container -->
</div>
<br>
<g:render template="/templates/footer"/>
</body>
</html>