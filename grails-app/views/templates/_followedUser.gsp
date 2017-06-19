<g:each var="user" in="${userList}">
    <g:if test="${i?.following?.id?.contains(user?.id)}">

    <g:if test="${user?.profile?.picture}">
        <img src="${createLink(controller: 'profile', action: 'display_picture', id: user.id)}"
             alt="Avatar" class=" w3-circle w3-center w3-margin-right"
             style="width:60px">
    </g:if>
        

        <div class="w3-center w3-small">
    <g:link controller="profile" action="findProfile" id="${user.id}">
        <g:if test="${user?.profile?.fullName}">
            <span>${user?.profile?.fullName}</span>
        </g:if>
    </g:link>
        </div>
        <br>
        <div class="w3-row w3-opacity w3-center w3-round">
    <div class="w3-row w3-center">
    %{--Condition to check button for follow unfollow value using custon tag --}%
    %{--<g:followUnfollow user="${user}"/>--}%

        <g:form controller="user" action="unfollow">
            <g:textField name="id" value="${user?.id}" hidden="true"/>
            <button class="w3-btn w3-red w3-round ">Unfollow<i class="fa fa-times"></i></span>
            </button>
        </g:form>

        <hr>
    </div>
        </div>
    </g:if>
</g:each>
