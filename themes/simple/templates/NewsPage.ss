<!DOCTYPE html>
<html>
<head>
<% base_tag %>
<% include GetIncludes %>
<link href='static-assets/css/news.css' rel='stylesheet' />
</head>

<body>
<script>
var APP = 'DefApp';
</script>

<div id="top" class="newsitem-view">
  <div class="container-fluid nopadding">
    <div id="content">
      <div class="newsitem-detail-view clearfix">
        <div class="container">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding">
          <h1>$MenuTitle</h1>
          $Content
          </div>
        </div>
      </div>

      <div class="newsitem-detail-photos-view clearfix">
        <% loop NewsPhotoElements %>
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

      <% include DisplayFooter %>
    </div>
    <% include DisplayHeader %>
  </div>
</div>

<% include DisplayAnalytics %>
</body>
<script data-main="static-assets/js/main" src="static-assets/js/libs/require.min.js"></script>
</html>