<% loop Projects %>
  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding">
    <div class="projects-filter-project-view clearfix">
      <% if GroupYear %>
        <div class="filter-marker">{$GroupYear}</div>
      <% end_if %>
      <a href="{$Link}">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 nopadding">
      <% if  HeroImage %>
        <img class="fadein" data-src="{$HeroImage.URL}">
      <% else %>
        <% loop ProjectPhotoElements %>
          <% if Pos = 1 %><img class="fadein" data-src="{$HeroImage.URL}"><% end_if %>
        <% end_loop %>
      <% end_if %>
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
        <% if LocationFormatted %>
          <h2 class="text">$LocationFormatted</h2>
        <% end_if %>
        <% if Synopsis %>
          <h2 class="text">$Synopsis</h2>
        <% end_if %>
        </div>
      </div>
      </a>
    </div>
  </div>
<% end_loop %>
