function setupMarkers () {
  initialize(window.markers);
}

function initialize(markers) {
    var map;
    var bounds = new google.maps.LatLngBounds();

    // Display a map on the page
    map = new google.maps.Map(document.getElementById("map-canvas"));    
    // Info Window Content
    var infoWindowContent =  new Array();
    for( i = 0; i < markers.length; i++ ) {
      infoWindowContent.push(['<div class="info_content">' + "<h3><a href='/posts/" +  markers[i]["id"] + "'" + 'target="_blank" rel="noopener noreferrer">' + markers[i]["marker_title"] + '</a></h3>' + '<p>'+ markers[i]["marker_title"]  + '</p>' + '</div>']);
    }
    // Display multiple markers on a map
    var infoWindow = new google.maps.InfoWindow(), marker, i;
  
    // Loop through our array of markers & place each one on the map  
    for( i = 0; i < markers.length; i++ ) {
        var position = new google.maps.LatLng(markers[i]["lat"], markers[i]["lng"]);
        bounds.extend(position);
        marker = new google.maps.Marker({
            position: position,
            map: map,
            title: markers[i]["marker_title"]
        });        
        // Allow each marker to have an info window    
        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infoWindow.setContent(infoWindowContent[i][0]);
                infoWindow.open(map, marker);
            }
        })(marker, i));
        // Automatically center the map fitting all markers on the screen
        map.fitBounds(bounds);
    }
}
