define([
  'underscore', 
  'backbone'
], function(_, Backbone){

  var InstagramFeedView = Backbone.View.extend({
    initialize: function(options){
      this.template = _.template($('#instagramFeedViewTemplate').text());

      this.options = options;
      this.results = null;
    },

    load: function(el, strShortCode){
      var self = this;

      var url = 'https://api.instagram.com/v1/users/self/media/recent?count=' + this.options.num_posts + '&access_token=1574265685.1677ed0.fbe08459160947379f24ddd6b45c6e55';
//      console.log(url);
      $.getJSON(url, function(results){
        self.results = results;

        // fire event
        app.dispatcher.trigger("InstagramFeedView:loaded", self);
      });
    },

    render: function(){
      $(this.el).html(this.template(this.results));

      // now load images
      loadImages($(this.el));

      // truncate
      $('.truncate', $(this.el)).each(function(index){
        $(this).html($.truncate($(this).html(), {length: $(this).attr('data-truncate')}));
      });
    }

  });

  return InstagramFeedView;
});
