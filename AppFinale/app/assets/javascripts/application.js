// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require bootstrap
//= require bootstrap-sprockets
$(function () {
    // Remove Search if user Resets Form or hits Escape!
$('body, .navbar-collapse form[role="search"] button[type="reset"]').on('click keyup', function(event) {
  console.log(event.currentTarget);
  if (event.which == 27 && $('.navbar-collapse form[role="search"]').hasClass('active') ||
    $(event.currentTarget).attr('type') == 'reset') {
    closeSearch();
  }
});

function closeSearch() {
        var $form = $('.navbar-collapse form[role="search"].active')
    $form.find('input').val('');
  $form.removeClass('active');
}

// Show Search if form is not active // event.preventDefault() is important, this prevents the form from submitting
$(document).on('click', '.navbar-collapse form[role="search"]:not(.active) button[type="submit"]', function(event) {
  event.preventDefault();
  var $form = $(this).closest('form'),
    $input = $form.find('input');
  $form.addClass('active');
  $input.focus();

});
// ONLY FOR DEMO // Please use $('form').submit(function(event)) to track from submission
// if your form is ajax remember to call `closeSearch()` to close the search container
$(document).on('click', '.navbar-collapse form[role="search"].active button[type="submit"]', function(event) {
  event.preventDefault();
  var $form = $(this).closest('form'),
    $input = $form.find('input');
  $('#showSearchTerm').text($input.val());
        closeSearch()
});
});
