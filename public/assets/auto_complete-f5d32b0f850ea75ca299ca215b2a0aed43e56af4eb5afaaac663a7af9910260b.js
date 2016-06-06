
/*onload initialize function */

$(document).ready(function() {
  initialize();
});


/****finished **/

var placeSearch, autocomplete;
var componentForm = {
  street_number: 'short_name',
  route: 'long_name',
  locality: 'long_name',
  administrative_area_level_1: 'short_name',
  country: 'long_name',
  postal_code: 'short_name'
};

function initialize() {
  // Create the autocomplete object, restricting the search
  // to geographical location types.
  autocomplete = new google.maps.places.Autocomplete(
      /** @type {HTMLInputElement} */(document.getElementById('location')),
      { types: ['geocode'] });
  // When the user selects an address from the dropdown,
  // populate the address fields in the form.
  google.maps.event.addListener(autocomplete, 'place_changed', function() {
    codeAddress();
  });
}

/* geocode the address and put the lat and log into hidden field value */
 function codeAddress() {
    //get the suburb of address 
    var place = autocomplete.getPlace();
    var suburb="";
    var city = "";
    for(var i=0; i<place.address_components.length;i++){
      if($.inArray('locality', place.address_components[i].types) > -1){
        suburb=place.address_components[i]["long_name"];
      }
    }

    var address = document.getElementById("location").value;
    var geocoder;
    geocoder = new google.maps.Geocoder();
    geocoder.geocode( { 'address': address}, function(results, status) {    
      if (status == google.maps.GeocoderStatus.OK) {   
        //document.getElementById("lat-lon").value=results[0].geometry.location;
        
        
      } else {
        alert("Geocode was not successful for the following reason: " + status);
      }
    });

  }

// Bias the autocomplete object to the user's geographical location,
// as supplied by the browser's 'navigator.geolocation' object.
function geolocate() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var geolocation = new google.maps.LatLng(
          position.coords.latitude, position.coords.longitude);
      var circle = new google.maps.Circle({
        center: geolocation,
        radius: position.coords.accuracy
      });
      autocomplete.setBounds(circle.getBounds());
    });
  }
}
