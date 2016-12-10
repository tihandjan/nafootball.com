// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// solve problem with table row
jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.document.location = $(this).data("href");
    });
    
});




$(document).on('turbolinks:load', function() {
    // plugin for select box
  $('.selectpicker').selectpicker({
      size: 10
    });
    // fix bug with icons on firefox
    if (navigator.userAgent.indexOf("Firefox") > 0) {
        $('.left-block .icon-small').hide();
        $('.fixtures .row-onlain .icon-small').hide();
        var windowsize = $(window).width();
            if (windowsize < 450) {
                $('.teams .icon-small').hide();
            }
    }
    // image hover effect
    $('.thumbnail').hover(
        function () {
            $('img',this).stop().animate({opacity: '0.4'}, 200);
        },
        function () {
            $('img',this).stop().animate({opacity: '0.9'}, 200);
        }
    );
    // table toggle
    (function(){
        $('.league-tables').hide();
        var league = $('#league-table').val();
        $('#' + league).show();
        $('#top-' + league).show();
    })();

    $('#league-table').change(
        function () {
        $('.league-tables').hide();
        var league = $('#league-table').val();
        $('#' + league).show();
        $('#top-' + league).show();
        }
    );
})