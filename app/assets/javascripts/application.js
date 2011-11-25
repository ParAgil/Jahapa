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
  distance = Math.round(Math.sqrt(dlat + dlong) * 100)
  
  if (distance<2) {
      zoom = 15
    }
  else if (distance>2 && distance<4) {
      zoom = 14
    }
  else if (distance=4 || (distance>4 && distance<8)) {
      zoom = 13
    }
  else if (distance=8 || (distance>8 && distance<15)) {
      zoom = 12
    }
  else if (distance=15 || distance>15) {
    zoom = 11
  }
  
  var latlng1 = new google.maps.LatLng(lat_1, long_1);
  var latlng2 = new google.maps.LatLng(lat_2, long_2);
  var center_latlng = new google.maps.LatLng(center_lat, center_long);
  var myOptions = {
    zoom: zoom,
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

function blueFade(element1, element2) {
  var blue = '#80B3FF';
  var white = '#FFFFFF';
  
  function fade(color) {
    element1.animate({backgroundColor: color}, 'slow')
    element2.animate({backgroundColor: color}, 'slow')
  };
  
  fade(blue);
  fade(white);
  fade(blue);
  fade(white)
}

$(document).ready(function() {
  blueFade($('form #start_location'), $('form #end_location'))
 $(".buscar").click(function(e){
   e.preventDefault();
   $('.panel').animate({width: '1100'}, 'slow')
   $('div.form-inputs span').css('display', 'none')
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
   $('div.list').fadeIn(3000)
   $('div.map').fadeIn(3000)
  });
})