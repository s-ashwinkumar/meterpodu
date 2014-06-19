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
 jQuery(document).ready(function(){
    initialize();
  });

function initialize() {
  // Create the autocomplete object, restricting the search
  // to geographical location types.
  var autocomplete = new google.maps.places.Autocomplete(document.getElementById('autocomplete'),{ types: [] });
  var autocomplete1 = new google.maps.places.Autocomplete(document.getElementById('autocomplete1'),{ types: [] });
  
}

function fetchmap(){
	var src = "https://www.google.com/maps/embed/v1/directions?key=AIzaSyBzOlFJoe2QzD2hXJlD8KO1v2dc5B7B9Vg&origin="+jQuery("#autocomplete").val().replace(/[ ]/g, "+")+"&destination="+jQuery("#autocomplete1").val().replace(/[ ]/g, "+")+"&avoid=tolls|highways"
	//jQuery("#mapurl").attr("src",src);
}
