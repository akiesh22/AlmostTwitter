<g:if test="${newUser?.id?.equals(user?.id)}" >
<g:if test="${flounfloMsg=='follow'}">
    <g:form controller="user" action="follow">
        <g:textField name="id" value="${newUser}" hidden="true"/>
        <button class="w3-btn w3-green">
            <span class="msg-follow w3-green w3-btn-block w3-section">Follow<i
                    class="fa fa-check"></i></span>
        </button>
    </g:form>
</g:if>
<g:elseif test="${flounfloMsg=='unfollow'}">
    <g:form controller="user" action="unfollow">
        <g:textField name="id" value="${newUser}" hidden="true"/>
        <button class="w3-btn w3-green">
            <span class="msg-follow w3-green w3-btn-block w3-section">Unfollow<i
                    class="fa fa-times"></i></span>
        </button>
    </g:form>
</g:elseif>
</g:if>

