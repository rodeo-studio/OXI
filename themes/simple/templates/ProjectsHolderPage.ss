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
              <li data-id="TagStrategiesAndFrameworks">Strategies & Frameworks</li>
              <li data-id="TagStreetsAndPublicRealm">Streets & Public Realm</li>
              <li data-id="TagPublicInfrastructure">Public Infrastructure</li>
              <li data-id="TagParksAndOpenSpace">Parks & Open Space</li>
              <li data-id="TagWaterfronts">Waterfronts</li>
              <li data-id="TagGardens">Gardens</li>
              <li data-id="TagEducation">Education</li>
              <li data-id="TagSportAndRecreation">Sport & Recreation</li>
              <li data-id="TagEcologyAndEnvironment">Ecology & Environment</li>
              <li data-id="TagGreenfieldsDevelopments">Greenfields Developments</li>
              <li data-id="TagConsultation">Consultation</li>    
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