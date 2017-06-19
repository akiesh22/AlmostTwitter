<g:if test="${tweets}">
    <g:each var="tweet" in="${tweets}">
        <g:if test="${i?.following?.id?.contains(tweet?.user?.id) || i?.id?.equals(tweet?.user?.id)}">
            <div class="w3-container w3-card-2 w3-white w3-round w3-margin"><br>
                <g:if test="${tweet?.user?.profile?.picture}">
                    <img src="${createLink(controller: 'profile', action: 'display_picture', id: tweet?.user?.id)}"
                         alt="Avatar" class="w3-left w3-circle w3-margin-right"
                         style="width:60px">
                </g:if>

                <g:if test="${i?.id?.equals(tweet?.user?.id)}">
                <div class="w3-dropdown-hover w3-right w3-opacity">
                    <button class="w3-button w3-green w3-small w3-ripple w3-round-large w3-slim">...</button>
                    <div class="w3-dropdown-content w3-border">
                        <a href="${createLink(controller: 'status', action: 'deleteStatus', id:tweet.id)}">Delete</a>
                    </div>
                </div>
                </g:if>

                <span class="w3-right w3-opacity w3-white">${tweet.dateCreated}</span>
                <h4>${tweet?.user?.profile?.fullName}</h4><br>
                <hr class="w3-clear">

                <p>${tweet.tweets}</p>
                <button type="button" class="w3-btn w3-theme-d1 w3-margin-bottom"><i
                        class="fa fa-thumbs-up"></i>Like</button>
                <button type="button" class="w3-btn w3-theme-d2 w3-margin-bottom"><i
                        class="fa fa-comment"></i>Comment</button>
            </div>
        </g:if>
    </g:each>
</g:if>