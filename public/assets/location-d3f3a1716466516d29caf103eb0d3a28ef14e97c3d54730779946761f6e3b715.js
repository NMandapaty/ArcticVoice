function createMap(myLatLng, updateUI, isDefaultLocation){
  //set map div height
  var mapdiv = $('#map');
  var width = mapdiv.width();
  mapdiv.css('height', width);

  var zoom = isDefaultLocation ? 4 : 12; // More precise if user sharing location.
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: zoom,
    center: myLatLng
  });

  var marker = new google.maps.Marker({
    position: myLatLng,
    draggable: true,
    map: map,
    title: 'Drag to set location'
  });

  marker.addListener('dragend', function(e) {
    map.setCenter(e.latLng);
    updateUI(e.latLng);
  });

}

function createDefaultMap(updateUI) {
  createMap({lat: 72.792081, lng: -38.714440}, updateUI, true); //greenland
}

function locationInit(latID, lngID) {
  var updateUI = function(latLng) {
    $('#'+latID).val(latLng.lat);
    $('#'+lngID).val(latLng.lng);
  };
  if (navigator.geolocation) {
    var success = function(pos) {
      var lat = pos.coords.latitude,
          lng = pos.coords.longitude;
      var latLng = {lat: lat, lng: lng};

      updateUI(latLng);

      createMap(latLng, updateUI);
    };

    var error = function() {
      createDefaultMap(updateUI);
    };

    navigator.geolocation.getCurrentPosition(success, error);
  } else {
    createDefaultMap(updateUI);
  }
}
;
