<% if Type = 2 %>
  <div class="item" data-type="instagram" data-ig-shortcode="{$InstagramShortcode}">
    <div class="type">Instagram</div>
    <span class="dynamic-content"></span>
  </div>
<% else %>
  <div class="item">
    <div class="type">
    <% if Type = 1 %>
      Event
    <% else %>  
      News
    <% end_if %>
    </div>
    <% control PageLinkPage %>
      <a href="$Link">
      <% if NewsPhotoElements %>
        <% control NewsPhotoElements %>
          <% if Pos = 1 %>
            <div class="image"><img src="{$HeroImage.URL}"></div>
          <% end_if %>
        <% end_control %>
        <div class="caption">{$MenuTitle} <span class="read-more">Read more</span></div>
      <% else %>
        <h1>{$MenuTitle}<div class="more"><i class="fa fa-caret-right"></i></div></h1>
      <% end_if %>
      </a>
    <% end_control %>
  </div>
<% end_if %>
