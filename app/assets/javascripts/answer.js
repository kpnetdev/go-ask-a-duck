var Answer = {
  init: function() {
    $('a.new-answer').on('click', this.toggleAnswerForm);
    $('form#new_answer').on('ajax:success', this.appendAnswer)
    $('form#new_answer').on('ajax:error', this.appendError)
  },

  appendAnswer: function(e, data) {
    $('.answer').append(data);
  },

  appendError: function(e, data) {

    $('.answer').before(data.responseText);
  },

  toggleAnswerForm: function(event) {
    event.preventDefault();
    $('form#new_answer').toggleClass('hidden');
  }
}

$(document).ready(function(){
  Answer.init()
})
