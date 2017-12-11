<!DOCTYPE html>
<html>
<head>
<% base_tag %>
<% include GetIncludes %>
<link href='static-assets/css/projects.css' rel='stylesheet' />
</head>

<body>
<script>
var APP = 'DefApp';
</script>

<div id="top" class="projects-view">
  <div class="container-fluid nopadding">
    <% include DisplayHeader %>

    <div class="filters-view">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding">
        <div class="filters-container">
          <div class="title">Filter -</div>
          <ul>
            <li class="active">Year</li><li>Small Builds</li><li>Landscape</li><li>Infrastructure</li><li>Public Space</li>
          </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="projects-filter-view clearfix">
      <% loop Projects %>
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding">
          <div class="projects-filter-project-view clearfix">
            <div class="filter-marker">2017</div>
            <a href="{$BaseHref}projects/project-2">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 nopadding">
            <% loop ProjectPhotoElements %>
              <% if Pos = 1 %><img src="{$HeroImage.URL}"><% end_if %>
            <% end_loop %>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 nopadding">
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
            </div>
            </a>
          </div>
        </div>
      <% end_loop %>
    </div>

    <% include DisplayFooter %>
  </div>
</div>

<% include DisplayAnalytics %>
</body>
<script data-main="static-assets/js/main" src="static-assets/js/libs/require.min.js"></script>
</html>