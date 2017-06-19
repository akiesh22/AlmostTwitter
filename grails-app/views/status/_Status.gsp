<div class="w3-row-padding w3-animate-bottom">
    <div class="w3-col m12">
        <div class="w3-card-2 w3-round w3-white">
            <div class="w3-container w3-padding">
                <h6 class="w3-opacity">Welcome to AlmostTwitter</h6>
                <g:form class="w3-round">
                    <g:textField style="width: 100%" name="tweets" contenteditable="true" class="w3-border w3-round-medium w3-padding"></g:textField>
                    <hr>
                    <g:submitToRemote value="Post" class="w3-btn w3-theme" url="[controller: 'status',action: 'newStatus']" update="newFeeds">
                    </g:submitToRemote>
                </g:form>
            </div>
        </div>
    </div>
</div>