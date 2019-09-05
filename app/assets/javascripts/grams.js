// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$( document ).ready( function () {
  $('.badge').click( function () {
    var form = $('.comment-form');
    if (form.data('state') === 'hidden') {
      form.slideDown();
      form.data('state', 'expanded');
    } else {
      form.slideUp();
      form.data('state', 'hidden');
    }
  });
});
