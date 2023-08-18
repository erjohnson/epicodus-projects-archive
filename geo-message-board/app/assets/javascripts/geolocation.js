// var current_lat;
// var current_lon;

// (function() {
//   /* Uses the HTML5 geolocation API to get the current user's location */
//   var getLocation = function() {
//     if (typeof navigator !== "undefined" && typeof navigator.geolocation !== "undefined") {
//       console.log("Asking user to get their location");
//       navigator.geolocation.getCurrentPosition(geolocationCallback, errorHandler);
//     } else {
//       console.log("Your browser does not support the HTML5 Geolocation API, so this demo will not work.")
//     }
//   };

//   /* Callback method from the geolocation API which receives the current user's location */
//   var geolocationCallback = function(location) {
//     current_lat = location.coords.latitude;
//     current_lon = location.coords.longitude;

//     console.log("Retrieved user's location: [" + current_lat + ", " + current_lon + "]");
//   }

//   /* Handles any errors from trying to get the user's current location */
//   var errorHandler = function(error) {
//     if (error.code == 1) {
//       console.log("Error: PERMISSION_DENIED: User denied access to their location");
//     } else if (error.code === 2) {
//       console.log("Error: POSITION_UNAVAILABLE: Network is down or positioning satellites cannot be reached");
//     } else if (error.code === 3) {
//       console.log("Error: TIMEOUT: Calculating the user's location too took long");
//     } else {
//       console.log("Unexpected error code")
//     }
//   };

//   getLocation();
// })();
