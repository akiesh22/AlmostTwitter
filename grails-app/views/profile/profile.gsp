<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="<g:createLinkTo dir="css" file="w3.css"/>"/>
    <link rel="stylesheet" href="<g:createLinkTo dir="css" file="font-awesome.min.css"/>"/>
    <link rel="stylesheet" href="<g:createLinkTo dir="css" file="libw3-theme-blue-grey.css"/>"/>
    <link rel="stylesheet" href="<g:createLinkTo dir="css" file="profileFor.css"/>"/>

</head>
<body class="w3-theme-l5">
<g:render template="/templates/header"/>
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">
<!-- Page Container -->
<!-- The Grid -->
<div class="w3-row">

    <div class="w3-col m5 w3-round-large w3-card-12 w3-white w3-padding-32 w3-center w3-animate-left">
        <p class=" w3-center w3-large w3-animate-top">Info Fill</p>
        <hr style="display: block;height: 30px; margin-top: -31px; border-style: solid; border-color: #8c8b8b; border-width: 0 0 1px 0;
            border-radius: 20px; ">
        <div class="profile">
            <g:uploadForm class="w3-opacity-min" controller="profile">
                <fieldset class="w3-animate-left">
                    <legend class="m3 w3-opacity-off">Picture</legend>
                    <input type="file" name="picture" id="picture"/>
                </fieldset>
                <br/>
                <fieldset class="w3-animate-left">
                    <legend class="w3-opacity-off">General Informations</legend>
                <label>Full Name:</label><br>
                <g:textField name="fullName" placeholder="Full Name" minlength="9" required="required"/><br>

                <label>Address :</label><br>
                <g:textField name="address" placeholder="Address" required="required"/>
                </fieldset>
                <br/>
                <fieldset class="w3-animate-left">
                    <legend class="l1 w3-opacity-off">Date of Birth</legend>
                    <g:datePicker required="required" name="dob" value="${new Date()}" precision="day"/>
                </fieldset>
                <br/>
                <fieldset class="w3-animate-left">
                    <legend class="w3-opacity-off">Sex :</legend>
                    <g:radioGroup required="required" name="sex"
                                  labels="['Male', 'Female']"
                                  values="['male', 'female']">
                        <p>${it.label} ${it.radio}</p>
                    </g:radioGroup>
                </fieldset>
                <g:actionSubmit value="Save" action="update"/>
            </g:uploadForm>
        </div>
    </div>
    %{--Account Settings--}%
    <div class="w3-col w3-right m3 w3-animate-right">
        <div class="w3-card-8 w3-round w3-white w3-padding-32 w3-center">
            <p><i class="fa fa-wrench w3-xxlarge w3-animate-fading"></i></p>
            <p class="w3-opacity">Delete this account !</p>
            <hr style="display: block;height: 30px; margin-top: -31px; border-style: solid; border-color: #8c8b8b; border-width: 0 0 1px 0;
            border-radius: 20px; ">
            <form>
            <button class="w3-btn-floating w3-red w3-text-shadow w3-animate-zoom">:(</button>
                <p class="w3-tiny">All the association and data of this account will be deleted !</p>
            </form></form>
        </div>
    </div>
</div>
</div>
<g:render template="/templates/footer"/>
</body>
</html>