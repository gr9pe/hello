
window.onload = function () {
  initMap();
}

function initMap(){
  let map = new google.maps.Map(document.getElementById("map"),{zoom: 15});
  let geocoder = new google.maps.Geocoder();
  let inputAddress = document.getElementById('address').value;
  
  geocoder.geocode( {'address': inputAddress}, function(results, status) {
    if (status == 'OK') {
      map.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
        map: map,
        position: results[0].geometry.location
      });
    } 
  }); 
}



