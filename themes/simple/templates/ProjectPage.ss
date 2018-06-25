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
var INSTAGRAM_POSTS = '{$InstagramPosts}';
</script>

<div id="top" class="project-view">
  <div class="container-fluid nopadding">
    <div id="content">
      <div class="project-detail-view clearfix">
        <div class="container">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding">
          <h1>
          <% if LabelFormatted %>
            $LabelFormatted
          <% else %>  
            $MenuTitle
          <% end_if %>
          </h1>
          <% if LocationFormatted %>
            <h2>$LocationFormatted</h2>
          <% end_if %>
          $Content</div>
        </div>
      </div>

      <div class="project-detail-photos-view clearfix">
        <% loop ProjectPhotoElements %>
          <% if Size = 0 %>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 nopadding"><% include DisplayPhotoElement %></div>
          <% else_if Size = 1 %>
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 nopadding"><% include DisplayPhotoElement %></div>
          <% else %>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding"><% include DisplayPhotoElement %></div>
          <% end_if %>
        <% end_loop %>

        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding">
          <div class="photos-footer">
          <span class="back-link"><i class="fa fa-caret-left"></i> <span class="link">Back</span></span>
          </div>
        </div>
      </div>

      <% include DisplayNews %>
      <% include DisplayFooter %>
    </div>
    <% include DisplayHeader %>
  </div>
</div>

<% include DisplayAnalytics %>
</body>
<script data-main="static-assets/js/main" src="static-assets/js/libs/require.min.js"></script>
</html>