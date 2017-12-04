<!DOCTYPE html>
<html>
<head>
<% base_tag %>
<% include GetIncludes %>
<link href='static-assets/css/practice.css' rel='stylesheet' />
</head>

<body>
<script>
var APP = 'DefApp';
</script>

<div id="top" class="practice-view">
  <div class="container-fluid nopadding">
    <% include DisplayHeader %>

    <div class="practice-detail-view clearfix">
      <div class="container">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding">$Content</div>
      </div>
    </div>

    <div class="practice-people-view clearfix">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding"><div class="title"><h1>People</h1></div></div>

      <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6 nopadding">
        <div class="person-container">
          <div class="name">Alex Game</div>
          Senior Landscape Architect  + Urban Designer
        </div>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6 nopadding">
        <div class="person-container">
          <div class="name">James Hayter</div>
          Director, Landscape Architect, Urban Designer, Architect
        </div>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6 nopadding">
        <div class="person-container">
          <div class="name">David Sadler</div>
          Senior Landscape Architect,
          Project Director, Horticulture 
        </div>
      </div>

      <div class="person-info-container row">
        <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
          <div class="person-info clearfix">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 nopadding">
              <div class="image"><img src="static-assets/images/temp_person.jpg"></div>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 nopadding">
              <div class="text">
                <p>
                Essi quibus, omnis molorpores pro ommodis eria nos sit, consequo excesto illuptas sumquo voluptatent facerum volecaes dolupicto bearum quam, ilitatemque net autemposande nonsequia voloresto dolestr umquia ideri cone etur? Qui doloritatur si dolorum quis magnihil esci sum el ipsantur, qui blandam fugit.
                </p>
                <div class="email"><a href="mailto:agame@oxigen.net.au">agame@oxigen.net.au</a></div>
                <div class="projects">
                  <div class="title">Projects</div>
                  <p>Lochiel Park Green Village, Nerang Crossing, Tonsley, Kitchen Garden</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6 nopadding">
        <div class="person-container">
          <div class="name">Alex Game</div>
          Senior Landscape Architect  + Urban Designer
        </div>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6 nopadding">
        <div class="person-container">
          <div class="name">James Hayter</div>
          Director, Landscape Architect, Urban Designer, Architect
        </div>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6 nopadding">
        <div class="person-container">
          <div class="name">David Sadler</div>
          Senior Landscape Architect,
          Project Director, Horticulture 
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