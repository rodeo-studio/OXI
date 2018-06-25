<% if NewsElements %>
  <div class="news-view clearfix">
    <% loop NewsElements %>  
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
    <div id="instagram-view"></div>
  </div>
<% end_if %>

<script type="text/template" id="instagramFeedViewTemplate">
{{ _.each(data, function(post, index) { }}
  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 nopadding">
    <div class="item" data-type="instagram">
    <a href="{{= post.link }}" target="_blank">
    <div class="type">Instagram</div>
    <div class="image"><img class="fadein" data-src="{{= post.images.standard_resolution.url }}"></div>
    <div class="caption truncate" data-truncate="150">{{= post.caption.text }}</div>
    </a>
    </div>
  </div>
{{ }); }}
</script>
