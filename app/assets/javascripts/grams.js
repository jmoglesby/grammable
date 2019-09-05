// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$( document ).ready( function () {
  $('#add-comment').click( function () {
    var form = $('#add-comment-form');
    if (form.data('state') === 'hidden') {
      form.slideDown();
      form.data('state', 'expanded');
    } else {
      form.slideUp();
      form.data('state', 'hidden');
    }
  });
});
