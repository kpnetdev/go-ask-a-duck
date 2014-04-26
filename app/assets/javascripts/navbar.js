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



var Navbar = {
  loginElement : $('a.nav-login')
  signupElement : $('a.nav-signup')
}





$(document).ready(function(){
  Login.init();
  SignUp.init();
})