"use strict";

function initMap(){
  var get_latitude = $('#google-map').data('latitude');
  var get_longitude = $('#google-map').data('longitude');

  var myLatlng = new google.maps.LatLng(get_latitude, get_longitude);
  var mapOptions = {
      zoom: 12,
      scrollwheel: false,
      center: myLatlng,
      disableDefaultUI: true,
      gestureHandling: 'none'
  };
  var map = new google.maps.Map(document.getElementById('google-map'), mapOptions);
}