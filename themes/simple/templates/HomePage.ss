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
var INSTAGRAM_POSTS = '{$InstagramPosts}';
</script>

<div id="top" class="home-view">
  <div class="container-fluid nopadding">
    <div id="content">
      <div class="projects-view clearfix">
        <% loop Projects %>
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding">
            <a href="{$BaseHref}projects/{$URLSegment}">
            <% if  HeroImage %>
              <img class="fadein" data-src="{$HeroImage.URL}">
            <% else %>
              <% loop ProjectPhotoElements %>
                <% if Pos = 1 %><img class="fadein" data-src="{$HeroImage.URL}"><% end_if %>
              <% end_loop %>
            <% end_if %>
            <div class="detail">
            <h1>
            <% if LabelFormatted %>
              $LabelFormatted
            <% else %>  
              $MenuTitle
            <% end_if %>
            </h1>
            <% if Synopsis %>
              <h2 class="text">$Synopsis</h2>
            <% end_if %>
            </div>
            </a>
          </div>
        <% end_loop %>
      </div>

      <% include DisplayNews %>
      <% include DisplayFooter %>
    </div>
  </div>
  <% include DisplayHeader %>
</div>

<% include DisplayAnalytics %>
</body>
<script data-main="static-assets/js/main" src="static-assets/js/libs/require.min.js"></script>
</html>