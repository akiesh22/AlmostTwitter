<!DOCTYPE html>
<html>
<head><title>AlmostTwitter</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<g:javascript library="jquery"/>
<link rel="stylesheet" href="<g:createLinkTo dir="css" file="font-awesome.min.css"/>"/>
<link rel="stylesheet" href="<g:createLinkTo dir="css" file="libw3-theme-blue-grey.css"/>"/>
<link rel="stylesheet" href="<g:createLinkTo dir="css" file="w3.css"/>"/>
<link rel="stylesheet" href="<g:createLinkTo dir="css" file="fubtn.css"/>"/>
<ckeditor:resources/>
</head>
<style>
html, body, h1, h2, h3, h4, h5 {
    font-family: "Open Sans", sans-serif
}
/*For Form Template*/


</style>
<r:layoutResources/>

</head>
<body class="w3-theme-l5">

%{--Load home template here--}%
<g:layoutBody/>

<script>
    // Accordion
    function myFunction(id) {
        var x = document.getElementById(id);
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
            x.previousElementSibling.className += " w3-theme-d1";
        } else {
            x.className = x.className.replace("w3-show", "");
            x.previousElementSibling.className =
                    x.previousElementSibling.className.replace(" w3-theme-d1", "");
        }
    }

    // Used to toggle the menu on smaller screens when clicking on the menu button
    function openNav() {
        var x = document.getElementById("navDemo");
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
        } else {
            x.className = x.className.replace(" w3-show", "");
        }
    }
</script>
<r:layoutResources/>
</body>
</html>
