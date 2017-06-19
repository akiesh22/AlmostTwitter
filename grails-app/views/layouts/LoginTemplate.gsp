<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>LoginToAlmostTwitter</title>
    <link rel="stylesheet" type="text/css" href="<g:createLinkTo dir="css" file="style.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<g:createLinkTo dir="css" file="font-awesome.min.css"/>"/>
<style>
.alert {
    padding: 20px;
    background-color: red;
    color: white;
}
.closebtn {
    margin-left: 15px;
    color: white;
    font-weight: bold;
    float: right;
    font-size: 22px;
    line-height: 20px;
    cursor: pointer;
    transition: 0.3s;
}

.closebtn:hover {
    color: black;
}
</style>
</head>

<body>
<div class="pen-title">
</div>
<div class="container">

    <g:layoutBody/>

</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>


<script>
    $('.toggle').on('click', function() {
        $('.container').stop().addClass('active');
    });

    $('.close').on('click', function() {
        $('.container').stop().removeClass('active');
    });
</script>


</body>
</html>
