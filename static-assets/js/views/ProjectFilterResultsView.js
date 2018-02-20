define([
  'underscore', 
  'backbone'
], function(_, Backbone){

  var ProjectFilterResultsView = Backbone.View.extend({
    initialize: function(options){
      this.options = options;
    },

    load: function(strFilter){
      var self = this;

      var strURL = 'projects/filter/' + strFilter;
      $.ajax({
        url: strURL,
        success: function(response) {
          self.response = response;
          // fire event
          app.dispatcher.trigger("ProjectFilterResultsView:loaded", self);
        },
        error: function(response) {
          console.log('ERR');
          console.log(response);
        }
      });
    },

    render: function(){
      var self = this;

      $(this.el).html(self.response);

      // now load images
      loadImages($(this.el));

      return this;
    }

  });

  return ProjectFilterResultsView;
});
