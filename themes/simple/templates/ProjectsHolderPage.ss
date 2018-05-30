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
    <div id="content">
      <div class="filters-view">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding">
          <div class="filters-container">
            <div class="title">
            <span class="off">Filter +</span>
            <span class="on">Filter -</span>
            </div>
            <div class="filters-panel">
            <ul>
              <li class="active" data-id="all">Year</li>
              <li data-id="TagArchitecture">Architecture</li>
              <li data-id="TagStrategies">Strategies</li>
              <li data-id="TagPublicInfrastructure">Public Infrastructure</li>
              <li data-id="TagStreets">Streets</li>
              <li data-id="TagParks">Parks</li>
              <li data-id="TagGardens">Gardens</li>
              <li data-id="TagEducation">Education</li>
              <li data-id="TagSport">Sport</li>
            </ul>
            </div>
          </div>
        </div>
      </div>

      <div class="projects-filter-view clearfix">
        <div id="projects-filter-results-view"></div>
      </div>

      <% include DisplayFooter %>
    </div>
  </div>

  <% include DisplayHeader %>
</div>

<% include DisplayAnalytics %>
</body>
<script data-main="static-assets/js/main" src="static-assets/js/libs/require.min.js"></script>
</html>