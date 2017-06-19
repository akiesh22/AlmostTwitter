<!-- Profile -->

<div class="w3-card-2 w3-round w3-white">
    <div class="w3-container w3-animate-left">
        <h4 class="w3-center w3-animate-fading">${user?.profile?.fullName}</h4>
        <hr/>

        <p class="w3-center">
        <fieldset class="w3-round-medium w3-animate-top" style="margin-left: 30%;height:120px;width:120px;border: 2px solid #2d6980;">
            <g:if test="${user?.profile?.picture}">
                <img src="${createLink(controller: 'profile', action: 'display_picture', id: user?.id)}"
                     class="w3-round-medium" style="height:106px;width:106px" alt="Avatar"/>
            </g:if>
        </fieldset>
    </p>
        <hr>
<fieldset>
    <legend style="padding: 0.2em 0.5em;border:2px solid #0d7087;color:black;font-size:90%;text-align:right;">About</legend>
        <p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i>${user?.profile?.address}</p>

        <p><i class="fa fa-male fa-fw w3-margin-right w3-text-theme"></i>${user?.profile?.sex}</p>
</fieldset>
        <br>
    </div>
</div>
<br>

<!-- Accordion -->
<div class="w3-card-2 w3-round">
    <div class="w3-accordion w3-white">
        <button onclick="myFunction('Demo1')" class="w3-btn-block w3-theme-l1 w3-left-align"><i
                class="fa fa-circle-o-notch fa-fw w3-margin-right"></i> My Groups</button>

        <div id="Demo1" class="w3-accordion-content w3-container">
            <p>Some text..</p>
        </div>
        <button onclick="myFunction('Demo2')" class="w3-btn-block w3-theme-l1 w3-left-align"><i
                class="fa fa-calendar-check-o fa-fw w3-margin-right"></i> My Events</button>

        <div id="Demo2" class="w3-accordion-content w3-container">
            <p>Some other text..</p>
        </div>
        <button onclick="myFunction('Demo3')" class="w3-btn-block w3-theme-l1 w3-left-align"><i
                class="fa fa-users fa-fw w3-margin-right"></i> My Photos</button>

        <div id="Demo3" class="w3-accordion-content w3-container">
            <div class="w3-row-padding">
                <br>

                <div class="w3-half">
                    <img src="/w3images/lights.jpg" style="width:100%" class="w3-margin-bottom">
                </div>

                <div class="w3-half">
                    <img src="/w3images/nature.jpg" style="width:100%" class="w3-margin-bottom">
                </div>

                <div class="w3-half">
                    <img src="/w3images/mountains.jpg" style="width:100%" class="w3-margin-bottom">
                </div>

                <div class="w3-half">
                    <img src="/w3images/forest.jpg" style="width:100%" class="w3-margin-bottom">
                </div>

                <div class="w3-half">
                    <img src="/w3images/nature.jpg" style="width:100%" class="w3-margin-bottom">
                </div>

                <div class="w3-half">
                    <img src="/w3images/fjords.jpg" style="width:100%" class="w3-margin-bottom">
                </div>
            </div>
        </div>
    </div>
</div>
<br>

<div class="w3-card-2 w3-round w3-white w3-center w3-animate-left">
    <div class="w3-container">
        <p>My Followings</p>
        <hr>
        <g:render template="/templates/followedUser"/>
    </div>
</div>
<br>


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