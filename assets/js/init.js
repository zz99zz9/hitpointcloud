/* ---------------------------------------------- /*
 * Activate Bootstrap Dropdown Hover and Click Navbar
/* ---------------------------------------------- */
jQuery(function($) {
    $('.navbar .dropdown').hover(function() {
        $(this).find('.dropdown-menu').first().stop(true, true).show();
    }, function() {
        $(this).find('.dropdown-menu').first().stop(true, true).hide();
    });
    $('.navbar .dropdown > a').click(function(){
        location.href = this.href;
    });
});


/* ---------------------------------------------- /*
 * Activate Bootstrap tabs on hover
/* ---------------------------------------------- */
(function ($) {
  $(function () {
    $(document).off('click.bs.tab.data-api', '[data-hover="tab"]');
    $(document).on('mouseenter.bs.tab.data-api', '[data-hover="tab"]', function () {
      $(this).tab('show');
    });
  });
})(jQuery);


/* ---------------------------------------------- /*
 * Activate Bootstrap tabs on click in navbar
/* ---------------------------------------------- */
$('.dropdown-content .nav-tabs li a').on("click",function (e) {
          window.location.href = $(this).attr("data-href");
});


/* ---------------------------------------------- /*
 * Activate Bootstrap stickytabs
/* ---------------------------------------------- */
$(function() {
    var options = {
        backToTop: false
    };
    $('.nav-tabs').stickyTabs( options );
});


/* ---------------------------------------------- /*
 * hide carousel controls on first and last items
/* ---------------------------------------------- */
$("#featured-customers-carousel").carousel({interval: false, wrap: false});

var checkitem = function() {
  var $this;
  $this = $("#featured-customers-carousel");
  if ($("#featured-customers-carousel .carousel-inner .item:first").hasClass("active")) {
      $this.children(".left").hide();
      $this.children(".right").show();
  } else if ($("#featured-customers-carousel .carousel-inner .item:last").hasClass("active")) {
      $this.children(".right").hide();
      $this.children(".left").show();
  } else {
      $this.children(".carousel-control").show();
  }
};

checkitem();

$("#featured-customers-carousel").on("slid.bs.carousel", "", checkitem);


/* ---------------------------------------------- /*
 * Activate popup-video
/* ---------------------------------------------- */
  $(document).ready(function(){
    $("a[rel^='prettyPhoto[youtube]']").prettyPhoto();
    $(".popup-video").prettyPhoto({
        default_width: 970,
        default_height: 546});
  });


/* ---------------------------------------------- /*
 * Wheel image responsive
/* ---------------------------------------------- */
$(document).ready(function(e) {
    $('img[usemap]').rwdImageMaps();
});


/* ---------------------------------------------- /*
 * Temporary redirect to HK site
/* ---------------------------------------------- */
$(document).ready(function(){
    $("a").click(function(e){
    	if (!$(e.target).hasClass('nocheck')) {
	        if(/^#/.test(this.getAttribute("href")) != true &&
	           this.classList.contains("popup-video") != true &&
	           /_blank/.test(this.getAttribute("target")) != true) { 
	            e.preventDefault();
	            var url = this.href;
	            UrlExists(url, function(status){
	                if(status != 200){
	                    var newURL;
	                    if (/\/assets\//.test(url)) {
	                        newURL = url.replace(/http:\/\/www.netsuite.cn\//,'http://www.netsuite.com.hk/portal/');
	                    } else {
	                        newURL = url.replace(/http:\/\/www.netsuite.cn\//,'http://www.netsuite.com.hk/portal/hk/');
	                    }
	                    window.location.href = newURL;
	                } else {
	                    window.location.href = url;
	                }
	            });
	        }
    	}
    });
    
    function UrlExists(url, cb){
        $.ajax({
            url:      url,
            dataType: 'text',
            type:     'GET',
            complete:  function(xhr){
                if(typeof cb === 'function') {
                    if (xhr.status === 200) {
                        if (xhr.responseText.indexOf("Invalid Host") !== -1) {
                            cb.apply(this, [404]);
                        } else {
                            cb.apply(this, [xhr.status]);
                        }
                    } else {
                        cb.apply(this, [xhr.status]);
                    }
                }
            }
        });
    }
});