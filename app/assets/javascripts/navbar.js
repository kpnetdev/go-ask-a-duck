var Login = {
  init: function(){
    $('a.nav-login').on('click', this.toggleVisibility);
  },

  toggleVisibility: function(e) {
    e.preventDefault();
    $('.login').toggleClass('visible');
  }
}




var SignUp = {
  init: function() {
    $('a.nav-signup').on('click', this.toggleVisibility);
  },

  toggleVisibility: function(e) {
    e.preventDefault();
    $('.sign-up').toggleClass('visible');
  }
}



$(document).ready(function(){
  Login.init();
  SignUp.init();
})