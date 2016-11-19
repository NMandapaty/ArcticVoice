function createMap(myLatLng, isDefaultLocation){
  var zoom = isDefaultLocation ? 4 : 12; // More precise if user sharing location.
  var map = new google.maps.Map(document.getElementById('map-canvas'), {
    zoom: zoom,
    center: myLatLng
  });

  var marker = new google.maps.Marker({
    position: myLatLng,
    map: map,
    title: 'Hello World!'
  });
}

function initMap() {
    if (navigator.geolocation) {
      success = function(position) { // user location
        createMap({lat: position.coords.latitude, lng: position.coords.longitude}, false);
      };
      error = function() { createMap({lat: 72.792081, lng: -38.714440}, true); } //greenland

      navigator.geolocation.getCurrentPosition(success, error);
    }
    else {
      createMap({lat: 72.792081, lng: -38.714440}, true); //greenland
    }
}
;
