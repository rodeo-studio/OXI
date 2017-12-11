var app = app || {};

define([
  'underscore',
  'backbone',
  'bootstrap',
  'modernizr',
  'imageScale',
  'views/ProjectFilterResultsView'
], function(_, Backbone, bootstrap, modernizr, imageScale, ProjectFilterResultsView){
  app.dispatcher = _.clone(Backbone.Events);

  _.templateSettings = {
      evaluate:    /\{\{(.+?)\}\}/g,
      interpolate: /\{\{=(.+?)\}\}/g,
      escape:      /\{\{-(.+?)\}\}/g
  };

  var initialize = function() {
    var self = this;
    
    app.dispatcher.on("ProjectFilterResultsView:loaded", onProjectFilterResultsLoaded);

    var nActiveProfileID = 0;
    var projectFilterResultsView = null;

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

      var strImageURL = $('.image', elElement).html();
      var strContent = $('.content', elElement).html();
      var strEmail = $('.email', elElement).html();
      var strProjectsSummary = $('.projects-summary', elElement).html();

      // show shared info (next sibling)
      var elSharedInfoMini = $(elElement).nextAll('.shared-info-mini').eq(0);
      $('.image img', elSharedInfoMini).attr('src', strImageURL);
      $('.content', elSharedInfoMini).html(strContent);
      $('.email a', elSharedInfoMini).attr('href', 'mailto:' + strEmail);
      $('.email a', elSharedInfoMini).html(strEmail);
      $('.projects-summary', elSharedInfoMini).html(strProjectsSummary);
      elSharedInfoMini.fadeIn();

      var elSharedInfoMaxi = $(elElement).nextAll('.shared-info-maxi').eq(0);
      $('.image img', elSharedInfoMaxi).attr('src', strImageURL);
      $('.content', elSharedInfoMaxi).html(strContent);
      $('.email a', elSharedInfoMaxi).attr('href', 'mailto:' + strEmail);
      $('.email a', elSharedInfoMaxi).html(strEmail);
      $('.projects-summary', elSharedInfoMaxi).html(strProjectsSummary);
      elSharedInfoMaxi.fadeIn();
    });

    if ($('#projects-filter-results-view')) {
      projectFilterResultsView = new ProjectFilterResultsView({ el: '#projects-filter-results-view' });
      projectFilterResultsView.load();
    }

    function onProjectFilterResultsLoaded() {
      projectFilterResultsView.render();
    }
  };

  return { 
    initialize: initialize
  };
});

