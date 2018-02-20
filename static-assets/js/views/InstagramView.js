define([
  'underscore', 
  'backbone'
], function(_, Backbone){

  var InstagramView = Backbone.View.extend({
    initialize: function(options){
      this.template = _.template($('#postInstagramViewTemplate').text());

      this.options = options;
      this.result = null;
    },

    load: function(el, strShortCode){
      var self = this;

      var url = "https://api.instagram.com/v1/media/shortcode/" + strShortCode + "?access_token=1574265685.1677ed0.fbe08459160947379f24ddd6b45c6e55";
      $.getJSON(url, function(result){
        $('.dynamic-content', el).html(self.template(result));

        // now load images
        loadImages(el);

        // truncate
        $('.truncate', el).each(function(index){
          $(this).html($.truncate($(this).html(), {length: $(this).attr('data-truncate')}));
        });
      });
    },

    loadAndRender: function(){
      var self = this;

      $('[data-type=instagram]', this.el).each(function(){
        self.load($(this), $(this).attr('data-ig-shortcode'));
      })
    }

  });

  return InstagramView;
});
