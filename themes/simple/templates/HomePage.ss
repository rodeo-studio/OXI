<!DOCTYPE html>
<html>
<head>
<% base_tag %>
<% include GetIncludes %>
<link href='static-assets/css/home.css' rel='stylesheet' />
</head>

<body>
<script>
var APP = 'DefApp';
</script>

<div id="top" class="home-view">
  <div class="container-fluid nopadding">

    <div class="projects-view">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding">
      <img src="static-assets/images/temp_home1.jpg">
      </div>
    </div>

    <div class="header-view">
      <div class="logo"><img src="static-assets/images/logo.png"></div>
    </div>

  </div>
</div>

<% include DisplayAnalytics %>
</body>
<script data-main="static-assets/js/main" src="static-assets/js/libs/require.min.js"></script>
</html>