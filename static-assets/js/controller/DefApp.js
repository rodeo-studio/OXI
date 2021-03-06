var app = app || {};

define([
  'underscore',
  'backbone',
  'bootstrap',
  'modernizr',
  'truncate',
  'imageScale',
  'views/ProjectFilterResultsView',
  'views/InstagramFeedView'
], function(_, Backbone, bootstrap, modernizr, truncate, imageScale, ProjectFilterResultsView, InstagramFeedView){
  app.dispatcher = _.clone(Backbone.Events);

  _.templateSettings = {
      evaluate:    /\{\{(.+?)\}\}/g,
      interpolate: /\{\{=(.+?)\}\}/g,
      escape:      /\{\{-(.+?)\}\}/g
  };

  var initialize = function() {
    var self = this;
    
    app.dispatcher.on("ProjectFilterResultsView:loaded", onProjectFilterResultsLoaded);
    app.dispatcher.on("InstagramFeedView:loaded", onInstagramFeedLoaded);

    var nActiveProfileID = 0;
    var instagramFeedView = null;
    var projectFilterResultsView = null;

    loadImages($('body'));

    $('.top').click(function(evt){
      $('html, body').animate({
        scrollTop: $("#top").offset().top
      }, 1000);
    });

    $('.back-link').click(function(evt){
      window.history.back();
    });

    $('.filters-view .filters-container .title').click(function(evt){
      if ($(this).hasClass('active')) {
        $(this).removeClass('active');
        $('.on', this).hide();
        $('.off', this).show();
      }
      else {
        $(this).addClass('active');
        $('.on', this).show();
        $('.off', this).hide();
      }
      $('.filters-panel').toggle();
    });

    $('.person-container').click(function(evt){
      // hide any already open
      $('.person-info-container').hide();
      $('.person-container').removeClass('active');

      var elElement = $(this).parents('.person');

      // Don't show if ID hasn't changed
      if (elElement.attr('data-id') == nActiveProfileID) {
        nActiveProfileID = 0;
        return;
      }

      $(this).addClass('active');

      nActiveProfileID = elElement.attr('data-id');

      var strImageURL = $('.image', elElement).html();
      var strContent = $('.content', elElement).html();
      var strEmail = $('.email', elElement).html();
      var strProjectsSummary = $('.projects-summary', elElement).html();

      // show shared info (next sibling)
      var elSharedInfoMini = $(elElement).nextAll('.shared-info-mini').eq(0);
      $('img.ready', elSharedInfoMini).removeClass('ready');
      $('.image img', elSharedInfoMini).attr('data-src', strImageURL);
      $('.content', elSharedInfoMini).html(strContent);
      $('.email a', elSharedInfoMini).attr('href', 'mailto:' + strEmail);
      $('.email a', elSharedInfoMini).html(strEmail);
      $('.projects-summary', elSharedInfoMini).html(strProjectsSummary);
      elSharedInfoMini.fadeIn(500);

      var elSharedInfoMaxi = $(elElement).nextAll('.shared-info-maxi').eq(0);
      $('img.ready', elSharedInfoMaxi).removeClass('ready');
      $('.image img', elSharedInfoMaxi).attr('data-src', strImageURL);
      $('.content', elSharedInfoMaxi).html(strContent);
      $('.email a', elSharedInfoMaxi).attr('href', 'mailto:' + strEmail);
      $('.email a', elSharedInfoMaxi).html(strEmail);
      $('.projects-summary', elSharedInfoMaxi).html(strProjectsSummary);
      elSharedInfoMaxi.fadeIn(500);

      loadImages(elSharedInfoMini);
      loadImages(elSharedInfoMaxi);
    });

    // we want Instagram in our news
    if ($('.news-view').length) {
      var nPosts = 10;
      if (INSTAGRAM_POSTS != '') {
        nPosts = INSTAGRAM_POSTS;
      }
      instagramFeedView = new InstagramFeedView({ el: '#instagram-view', num_posts: nPosts });
      instagramFeedView.load();
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

    function onInstagramFeedLoaded() {
      instagramFeedView.render();
    }

    function onProjectFilterResultsLoaded() {
      projectFilterResultsView.render();
    }
  };

  return { 
    initialize: initialize
  };
});

