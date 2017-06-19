<%--
  Created by IntelliJ IDEA.
  User: Ganes
  Date: 21/02/2017
  Time: 23:33
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Home</title>
    <meta name="layout" content="HomeTemplate">
</head>

<body>

<div class="w3-top">
    <ul class="w3-navbar w3-theme-d2 w3-left-align w3-large">
        <li class="w3-hide-medium w3-hide-large w3-opennav w3-right">
            <a class="w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);"
               onclick="openNav()"><i class="fa fa-bars"></i></a>
        </li>

        <li><a href="${createLink(controller: 'profile', action: 'goHome')}"
               class="w3-padding-large w3-hover-white" title="Account Settings">
            <i class="fa fa-home w3-margin-right"></i>Home</a></li>

        <li class="w3-hide-small"><a href="#" class="w3-padding-large w3-hover-white" title="News"><i
                class="fa fa-globe"></i></a></li>

        <li class="w3-hide-small"><a href="${createLink(controller: 'profile', action: 'index')}"
                                     class="w3-padding-large w3-hover-white" title="Account Settings"><i
                    class="fa fa-user"></i></a></li>

        <li class="w3-hide-small"><a href="#" class="w3-padding-large w3-hover-white" title="Messages"><i
                class="fa fa-envelope"></i></a></li>

        <li class="w3-hide-small w3-dropdown-hover">
            <a href="#" class="w3-padding-large w3-hover-white" title="Notifications"><i class="fa fa-bell"></i><span
                    class="w3-badge w3-right w3-small w3-green">3</span></a>

            <div class="w3-dropdown-content w3-white w3-card-4">

                <a href="#">One new friend request</a>
                <a href="#">John Doe posted on your wall</a>
                <a href="#">Jane likes your post</a>
            </div>
        </li>

        <li class="w3-hide-small w3-right"><a href="${createLink(controller: 'user', action: 'logout')}"
                                              class="w3-padding-large w3-hover-white" title="Logout"><i
                    class="fa fa-sign-out"></i></a></li>
    </ul>
</div>

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
            <!-- Profile -->

            <div class="w3-card-2 w3-round w3-white">
                <div class="w3-container">
                    <h4 class="w3-center">${user.profile.fullName}</h4>

                    <p class="w3-center">
                        <g:if test="${user?.profile?.picture}">
                            <img src="${createLink(controller: 'profile', action: 'display_picture', id: user.id)}"
                                 style="height:106px;width:106px" alt="Avatar"/>
                        </g:if>
                    </p>
                    <hr>

                    <p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i>${user.profile.address}</p>

                    <p><i class="fa fa-male fa-fw w3-margin-right w3-text-theme"></i>${user.profile.sex}</p>

                </div>
            </div>
            <br>

            <!-- Accordion -->
            <div class="w3-card-2 w3-round">
            </div>
            <br>

            <!-- Interests -->
            <!-- Alert Box -->
            <div class="w3-container w3-round w3-theme-l4 w3-border w3-theme-border w3-margin-bottom w3-hide-small">
                <span onclick="this.parentElement.style.display = 'none'" class="w3-hover-text-grey w3-closebtn">
                    <i class="fa fa-remove"></i>
                </span>

                <p>

                <div id="message"></div>

                <div id="error"></div>
                <g:remoteLink controller="status" action="retrieve" update="message">Delete</g:remoteLink>
            </p>


                <p>People are looking at your profile. Find out who.</p>
            </div>

            <!-- End Left Column -->
        </div>

        <!-- Middle Column -->
        <div class="w3-col m7">
                    <div class="w3-container"><br>
                    </div>




        <!-- End Middle Column -->
        </div>

        <!-- Right Column -->
        <div class="w3-col m2">
            <div class="w3-card-2 w3-round w3-white w3-center">
                <div class="w3-container">
                    <p>Upcoming Events:</p>
                    <img src="/w3images/forest.jpg" alt="Forest" style="width:100%;">

                    <p><strong>Holiday</strong></p>

                    <p>Friday 15:00</p>

                    <p><button class="w3-btn w3-btn-block w3-theme-l4">Info</button></p>
                </div>
            </div>
            <br>
            <br>

            <div class="w3-card-2 w3-round w3-white w3-padding-16 w3-center">
                <p>ADS</p>
            </div>
            <br>

            <div class="w3-card-2 w3-round w3-white w3-padding-32 w3-center">
                <p><i class="fa fa-bug w3-xxlarge"></i></p>
            </div>

            <!-- End Right Column -->
        </div>

        <!-- End Grid -->
    </div>

    <!-- End Page Container -->
</div>
<br>
</body>
</html>