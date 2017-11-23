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
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding">
        <div class="projects-filter-project-view clearfix">

          <div class="filter-marker">2017</div>

          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 nopadding">
          <img src="static-assets/images/temp_home0.jpg">
          </div>
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 nopadding">
            <div class="detail">
            <h1>84 Halifax<br/>
            Street
            </h1>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding">
        <div class="projects-filter-project-view clearfix">

          <div class="filter-marker">2016</div>

          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 nopadding">
          <img src="static-assets/images/temp_home1.jpg">
          </div>
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 nopadding">
            <div class="detail">
            <h1>Flinders University<br/>
             Hub and Plaza</h1>
            <h2 class="text">
            Velecae volor aut que qui ad eum fugiatem ut quisci od ulliassum liquatum exceprem ratur aut que qui.
            </h2>
            </div>
          </div>
        </div>
      </div>
    </div>

    <% include DisplayFooter %>
  </div>
</div>

<% include DisplayAnalytics %>
</body>
<script data-main="static-assets/js/main" src="static-assets/js/libs/require.min.js"></script>
</html>