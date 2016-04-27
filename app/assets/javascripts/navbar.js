$(window).on('scroll', function(e){
  if ($(this).scrollTop() > 100) {
    $('.navbar-wagon').addClass("is-scrolling")
    $('.navbar-wagon-link').removeClass("unscrolled")
    $('.navbar-wagon-button').removeClass("unscrolled")
    $('.navicon').removeClass("unscrolled")
    $('.navicon-small').removeClass("unscrolled")
  } else {
    $('.navbar-wagon').removeClass("is-scrolling")
    $('.navbar-wagon-link').addClass("unscrolled")
    $('.navbar-wagon-button').addClass("unscrolled")
    $('.navicon').addClass("unscrolled")
    $('.navicon-small').addClass("unscrolled")
  }
})
