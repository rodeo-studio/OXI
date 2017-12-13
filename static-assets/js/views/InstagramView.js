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

      var url = "https://api.instagram.com/v1/media/shortcode/" + strShortCode + "?access_token=667809.9943ef6.bedccc5f855b471bbf5b2d973982cd85";
      console.log(url);
      $.getJSON(url, function(result){
        $('.dynamic-content', el).html(self.template(result));
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
