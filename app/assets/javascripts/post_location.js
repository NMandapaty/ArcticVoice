$(document).ready(function() {
  console.log('here');
  if (navigator.geolocation) {
    success = function(pos) {
      var lat = pos.coords.latitude,
          lon = pos.coords.longitude;

      $('#post_latitude').val(lat);
      $('#post_longitude').val(lon);
    }

    navigator.geolocation.getCurrentPosition(success);
  }
});
