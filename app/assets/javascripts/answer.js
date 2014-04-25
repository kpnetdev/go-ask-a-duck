var Answer = {
  init: function() {
    $('a.new-answer').on('click', this.toggleAnswerForm);
  },

  toggleAnswerForm: function(event) {
    event.preventDefault();
    $('form#new_answer').toggleClass('hidden');
  }
}

$(document).ready(function(){
  Answer.init()
})
