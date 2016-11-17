function locationInit(latID, lonID) {

  if (navigator.geolocation) {
    success = function(pos) {
      var lat = pos.coords.latitude,
          lon = pos.coords.longitude;

      $('#'+latID).val(lat);
      $('#'+lonID).val(lon);
    }

    navigator.geolocation.getCurrentPosition(success);
  }
}
