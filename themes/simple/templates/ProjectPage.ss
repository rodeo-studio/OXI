<!DOCTYPE html>
<html>
<head>
<% base_tag %>
<% include GetIncludes %>
<link href='static-assets/css/project.css' rel='stylesheet' />
</head>

<body>
<script>
var APP = 'DefApp';
</script>

<div id="top" class="project-view">
  <div class="container-fluid nopadding">
    <% include DisplayHeader %>

    <div class="project-detail-view clearfix">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding">
        <div class="image-element-container">
          <div class="image-element" style="background-image: url('static-assets/images/temp_project0.jpg')">
          <img src="static-assets/images/temp_project0.jpg">
          </div>
        </div>
      </div>
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 nopadding">
        <div class="image-element-container">
          <div class="image-element" style="background-image: url('static-assets/images/temp_project1.jpg')">
          <img src="static-assets/images/temp_project1.jpg">
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 nopadding">
        <div class="image-element-container">
          <div class="image-element" style="background-image: url('static-assets/images/temp_project2.jpg')">
          <img src="static-assets/images/temp_project2.jpg">
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 nopadding">
        <div class="image-element-container small">
          <div class="image-element" style="background-image: url('static-assets/images/temp_project3.jpg')">
          <img src="static-assets/images/temp_project3.jpg">
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 nopadding">
        <div class="image-element-container small">
          <div class="image-element" style="background-image: url('static-assets/images/temp_project4.jpg')">
          <img src="static-assets/images/temp_project4.jpg">
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 nopadding">
        <div class="image-element-container small">
          <div class="image-element" style="background-image: url('static-assets/images/temp_project5.jpg')">
          <img src="static-assets/images/temp_project5.jpg">
          </div>
        </div>
      </div>
    </div>

    <% include DisplayNews %>
    <% include DisplayFooter %>
  </div>
</div>

<% include DisplayAnalytics %>
</body>
<script data-main="static-assets/js/main" src="static-assets/js/libs/require.min.js"></script>
</html>