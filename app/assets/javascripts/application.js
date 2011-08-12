// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//


 $(document).ready(function() {
   $(".buscar").click(function(e){
     e.preventDefault();
     $('.panel').width(935)
     $.get("/routes", {
       start_location: $('form #start_location').val(), 
       end_location: $('form #end_location').val()
       });   
    });
 })