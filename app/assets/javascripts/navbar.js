var Navbar = {
  init: function() {
    $('a.nav-login').on('click', this.toggleLogin);
    $('a.nav-signup').on('click', this.toggleSignup);
  },
  toggleSignup: function(e) {
    e.preventDefault();
    $('.sign-up').addClass('visible');
    $('.login').removeClass('visible');
    $('.form-area').toggleClass('visible');
  },
  toggleLogin: function(e) {
    e.preventDefault();
    $('.login').addClass('visible');
    $('.sign-up').removeClass('visible');
    $('.form-area').toggleClass('visible');
  }
}


$(document).ready(function(){
  Navbar.init();
})