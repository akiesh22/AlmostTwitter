<g:each var="user" in="${userList}">
    <g:if test="${i?.following?.id?.contains(user?.id)}">
    </g:if>
    <g:else>
        <div class="w3-centerw3-margin-right">
        <g:if test="${user?.profile?.picture}">
            <img src="${createLink(controller: 'profile', action: 'display_picture', id: user.id)}"
                 class=" w3-circle " alt="Avatar" style="width:60px">
        </g:if>
        </div>
        <div class="w3-center w3-small">
        <g:link controller="profile" action="findProfile" id="${user.id}">
            <g:if test="${user?.profile?.fullName}">
                <span >${user?.profile?.fullName}</span>
            </g:if>
        </g:link>
        </div>
        <br>
        <div class="w3-row w3-opacity w3-center w3-round">
            %{--Condition to check button for follow unfollow value using custon tag --}%
            %{--<g:followUnfollow user="${user}"/>--}%
            <g:form controller="user" action="follow">
                <g:textField name="id" value="${user?.id}" hidden="true"/>
                <button class="w3-btn w3-green w3-round-large ">Follow<i
                            class="fa fa-check"></i></span>
                </button>
            </g:form>

            <hr>
        </div>
    </g:else>
</g:each>