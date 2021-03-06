// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery-hotkeys


$(function() {
  $("#documents_search input").keyup(function() {
    $.get($("#documents_search").attr("action"), $("#documents_search").serialize(), null, "script");
    return false;
  });

  $("#documents_search").submit(function() {
    $.get(this.action, $(this).serialize(), null, "script");
    return false;
  });
});

jQuery(function($) {
  function changeTab(e) {
    e.preventDefault();
    $("#tabs ul li a.active").removeClass("active");
    $(this).addClass("active");
    showSubNav($(this).attr("href"));
  }
    function showSubNav(activeDiv) {
      $("#tabs div").hide();
      $(activeDiv).show();
  }
  $("#main-nav li a").click(changeTab);
  $("#tabs ul li:eq(0) a").click();

});