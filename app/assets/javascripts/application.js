// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//

function initialize(latitude, longitude) {
  $('div.list_and_map').height(545)
  var center_lat;
  var center_long;
  var lat_1;
  var lat_2;
  var long_1;
  var long_2;
  var distance;
  var dalt;
  var dlong;
  var calc_zoom
  
  center_lat = (parseFloat(latitude.slice(0,1).text()) + parseFloat(latitude.slice(1).text())) / 2
  center_long = (parseFloat(longitude.slice(0,1).text()) + parseFloat(longitude.slice(1).text())) / 2
  lat_1 = (parseFloat(latitude.slice(0,1).text()))
  lat_2 = (parseFloat(latitude.slice(1).text()))
  long_1 = (parseFloat(longitude.slice(0,1).text()))
  long_2 = (parseFloat(longitude.slice(1).text()))
  dlat = Math.pow((lat_2 - lat_1), 2)
  dlong = Math.pow((long_2 - long_1), 2)
  distance = Math.round((Math.sqrt(dlat + dlong) * 100) + 0.055)
  calc_zoom = Math.round(16 * Math.pow(Math.E, (-0.046 * distance)))
  
  var latlng1 = new google.maps.LatLng(lat_1, long_1);
  var latlng2 = new google.maps.LatLng(lat_2, long_2);
  var center_latlng = new google.maps.LatLng(center_lat, center_long);
  var myOptions = {
    zoom: calc_zoom,
    center: center_latlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  var map = new google.maps.Map(document.getElementById("map"),
      myOptions);
  
  var marker1 = new google.maps.Marker({
    position: latlng1,
    map: map
  })
  
  var marker2 = new google.maps.Marker({
    position: latlng2,
    map: map
  })
}


$(document).ready(function() {
 $(".buscar").click(function(e){
   e.preventDefault();
   $('.panel').width(935)
   $.get("/routes", {
     start_location: $('form #start_location').val(), 
     end_location: $('form #end_location').val()
     }, function(data) {
      var info;
      info = $(data, 'div.buses_info');
      $('div.list').html(info)
   });
   $.get("/locations", {
     start_location: $('form #start_location').val(), 
     end_location: $('form #end_location').val() 
     }, function(data) {
      var latitude;
      var longitude;
      latitude = $(data).find('td.lat');
      longitude = $(data).find('td.long');
      initialize(latitude, longitude)
   });
  });
})