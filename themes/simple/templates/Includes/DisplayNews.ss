<% if HomeNewsElements %>
  <div class="news-view clearfix">
    <% loop HomeNewsElements %>  
      <% if Size = 1 %>
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding full-width-container">
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 nopadding full-width">
          <% include DisplayNewsItem %>
          </div>
        </div>
      <% else_if Size = 2 %>
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding full-width-container">
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 nopadding full-width left">
          <% include DisplayNewsItem %>
          </div>
        </div>
      <% else_if Size = 3 %>
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding full-width-container">
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 nopadding full-width right">
          <% include DisplayNewsItem %>
          </div>
        </div>
      <% else %>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 nopadding"><% include DisplayNewsItem %></div>
      <% end_if %>
    <% end_loop %>
  </div>

  <script type="text/template" id="postInstagramViewTemplate">
    <a href="{{= data.link }}" target="_blank">
    <div class="image"><img src="{{= data.images.standard_resolution.url }}"></div>
    <h2>{{= data.caption.text }}</h2>
    </a>
  </script>
<% end_if %>

