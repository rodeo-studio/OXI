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

    <div class="projects-view clearfix">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding">
        <img src="static-assets/images/temp_home0.jpg">
        <div class="detail">
        <h1>84 Halifax<br/>
        Street
        </h1>
        </div>
      </div>
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding">
      <img src="static-assets/images/temp_home1.jpg">
        <div class="detail">
        <h1>Flinders University<br/>
         Hub and Plaza</h1>
        <h2 class="text">
        Velecae volor aut que qui ad eum fugiatem ut quisci od ulliassum liquatum exceprem ratur aut que qui.
        </h2>
        </div>
      </div>
    </div>

    <% include DisplayNews %>
    <% include DisplayFooter %>
    <% include DisplayHeader %>
  </div>
</div>

<% include DisplayAnalytics %>
</body>
<script data-main="static-assets/js/main" src="static-assets/js/libs/require.min.js"></script>
</html>