require.config({
  waitSeconds: 10,
  paths: {
    jquery: 'libs/jquery-2.1.4.min',
    Modernizr: 'libs/modernizr-custom',
    underscore: 'libs/underscore-min',
    backbone: 'libs/backbone-min',
    async: 'libs/async',
    bootstrap: 'libs/bootstrap.min',
    modernizr: 'libs/modernizr-custom',
    truncate: 'libs/jquery.truncate',
    imageScale: 'libs/image-scale.min',
    imagesLoaded: 'https://cdnjs.cloudflare.com/ajax/libs/jquery.imagesloaded/4.1.2/imagesloaded.pkgd.min'
  },
  shim: {
    'bootstrap' : {
      deps: ['jquery']
    },
    'truncate' : {
      deps: ['jquery']
    },
    'imageScale': {
      deps: ['jquery'],
      exports: 'imageScale'
    },
    'imagesLoaded': {
      deps: ['jquery'],
      exports: 'imagesLoaded'
    }
  }
});

function loadImages(elContainer){
  $('img.fadein', elContainer).each(function(){
    $(this).load(function(){
      $(this).fadeIn();
    });
    $(this).attr('src', $(this).attr('data-src'));
  });
}

// Load our app module and pass it to our definition function
require(['controller/' + APP], function(App){
  App.initialize();
})
