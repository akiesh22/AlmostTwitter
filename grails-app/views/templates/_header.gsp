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