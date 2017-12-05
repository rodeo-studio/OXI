var app = app || {};

define([
  'underscore',
  'backbone',
  'bootstrap',
  'modernizr',
  'imageScale'
], function(_, Backbone, bootstrap, modernizr, imageScale){
  app.dispatcher = _.clone(Backbone.Events);

  _.templateSettings = {
      evaluate:    /\{\{(.+?)\}\}/g,
      interpolate: /\{\{=(.+?)\}\}/g,
      escape:      /\{\{-(.+?)\}\}/g
  };

  var initialize = function() {
    var self = this;
    
    var nActiveProfileID = 0;

    $('.top').click(function(evt){
      $('html, body').animate({
        scrollTop: $("#top").offset().top
      }, 1000);
    });

    $('.back-link').click(function(evt){
      window.history.back();
    });

    $('.person-container').click(function(evt){
      // hide any already open
      $('.person-info-container').hide();

      var elElement = $(this).parents('.person');

      // Don't show if ID hasn't changed
      if (elElement.attr('data-id') == nActiveProfileID) {
        nActiveProfileID = 0;
        return;
      }

      nActiveProfileID = elElement.attr('data-id');

      var strContent = $('.content', elElement).html();

      // show shared info (next sibling)
      var elSharedInfoMini = $(elElement).nextAll('.shared-info-mini').eq(0);
      $('.content', elSharedInfoMini).html(strContent);
      elSharedInfoMini.fadeIn();

      var elSharedInfoMaxi = $(elElement).nextAll('.shared-info-maxi').eq(0);
      $('.content', elSharedInfoMaxi).html(strContent);
      elSharedInfoMaxi.fadeIn();
    });
  };

  return { 
    initialize: initialize
  };
});

