// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function () {
    closeNavbar();
    isotope_init_all();
    new WOW().init();
    window.sr = ScrollReveal({move: 0});
    reveal_item();
    fixedHeader();

  });
$(window).scroll(function () {
        fixedHeader();
    });


function reveal_item(){
  sr.reveal('.tabs-body', {delay: 300, reset: true});
  sr.reveal('.map-img', {delay: 200, reset: true});

};


function wowInit() {
        var scrolled = $(window).scrollTop();
        if (scrolled > 150) {
        } else {
        }
        if (scrolled > 1) {
        } else {
        }
    };
    
function closeNavbar() {
  $('.navbar-nav>li>a').on('click', function(){
      $('.navbar-collapse').collapse('hide');
  });
}

///////////////////////////////////isotope///////////////////////
// init Isotope

function isotope_init_all() {
  var $all_card = $('.all_card').isotope({
    itemSelector: '.card'
    });

// store filter for each group
  var filters = {};
  $('.filters').on('click', '.button', function() {
    var $this = $(this);
    // get group key
    var $buttonGroup = $this.parents('.button-group');
    var filterGroup = $buttonGroup.attr('data-filter-group');
    // set filter for group
    filters[ filterGroup ] = $this.attr('data-filter');
    // combine filters
    var filterValue = concatValues( filters );
    // set filter for Isotope
    $all_card.isotope({ filter: filterValue });
    });

// change is-checked class on buttons


$('.button-group').each( function( i, buttonGroup ) {
  var $buttonGroup = $( buttonGroup );
$buttonGroup.on( 'click', 'button', function() {
  $buttonGroup.find('.is-checked').removeClass('is-checked');
  $( this ).addClass('is-checked');
  });
});
// flatten object by concatting values
function concatValues( obj ) {
  var value = '';
  for ( var prop in obj ) {
    value += obj[ prop ];
  }
  return value;
  }
};



function fixedHeader() {
        var scrolled = $(window).scrollTop();
        if (scrolled > 150) {
            $('#header').addClass('header-below');
        } else {
            $('#header').removeClass('header-below');
        }
        if (scrolled > 1) {
            $('#header').addClass('header-fixed');
        } else {
            $('#header').removeClass('header-fixed');
        }
    };
// Scroll reveal navbar End



