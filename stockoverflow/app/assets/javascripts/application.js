// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require iscroll
//= require masonry.pkgd
//= require isotope
//= require_tree .

$(document).ready(function() {
  // $('#pagination').jscroll();

  var $container = $('#container');

  $container.imagesLoaded(function() {
 
    $container.isotope({
      itemSelector: '.item',
      masonry: {
        columnWidth: 280
        }
    });
   
    $container.infinitescroll({
        navSelector: '#pagination',
        nextSelector: '#pagination .pagination .next_page',
        itemSelector: '.item',    
        pixelsFromNavToBottom: -Math.round($(window).height() * 0.9),
        bufferPx: Math.round($(window).height() * 0.9),
        loading      : {
          msgText  : $container.attr("data-loading-message"),
          finishedMsg: $container.attr("data-no-more-translators")
        }
      },
      function(newElements) {
        $container.isotope('appended', $(newElements));
        // $container.imagesLoaded();
      }
    );

    // var isotope_not_fixed = /chrom(e|ium)/.test(navigator.userAgent.toLowerCase());
    // $(document).scroll(function() {
    //   if(isotope_not_fixed) {
    //     isotope_not_fixed = false;
    //     $('#pagination').isotope({itemSelector: '.item'});
    //   }
    // });
  });
});
