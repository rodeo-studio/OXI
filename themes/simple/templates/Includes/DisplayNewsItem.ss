<% if Type = 2 %>
  <div class="item" data-type="instagram" data-ig-shortcode="{$InstagramShortcode}">
    <span class="dynamic-content"></span>
  </div>
<% else %>
  <div class="item">
    <% control PageLinkPage %>
      <a href="$Link">
      <div class="type">
      <% if Top.Type = 1 %>
        Event
      <% else %>  
        News
      <% end_if %>
      </div>
      <% if NewsPhotoElements %>
        <% if  HeroImage %>
          <img class="fadein" data-src="{$HeroImage.URL}">
        <% else %>
          <% control NewsPhotoElements %>
            <% if Pos = 1 %>
              <div class="image"><img class="fadein" data-src="{$HeroImage.URL}"></div>
            <% end_if %>
          <% end_control %>
        <% end_if %>
        <div class="caption">{$MenuTitle} <span class="read-more">Read more</span></div>
      <% else %>
        <h1>{$MenuTitle}<div class="more"><i class="fa fa-caret-right"></i></div></h1>
      <% end_if %>
      </a>
    <% end_control %>
  </div>
<% end_if %>
