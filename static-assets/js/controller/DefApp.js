var app = app || {};

define([
  'underscore',
  'backbone',
  'bootstrap',
  'modernizr',
  'imageScale',
  'views/ProjectFilterResultsView',
  'views/InstagramView'
], function(_, Backbone, bootstrap, modernizr, imageScale, ProjectFilterResultsView, InstagramView){
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
    var instagramView = null;
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

    // we want Instagram in our news
    if ($('.news-view').length) {
      instagramView = new InstagramView({ el: '.news-view' });
      instagramView.loadAndRender();
    }

    if ($('#projects-filter-results-view').length) {
      projectFilterResultsView = new ProjectFilterResultsView({ el: '#projects-filter-results-view' });

      $('.filters-container li').click(function(evt) {
        $('.filters-container li').removeClass('active');

        $(this).addClass('active');
        projectFilterResultsView.load($(this).attr('data-id'));
      });

      var elActiveFilter = $('.filters-container .active');
      projectFilterResultsView.load(elActiveFilter.attr('data-id'));
    }

    function onProjectFilterResultsLoaded() {
      projectFilterResultsView.render();
    }
  };

  return { 
    initialize: initialize
  };
});

