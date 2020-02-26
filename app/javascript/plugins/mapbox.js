// // Comment!
// import mapboxgl from '../node_modules/mapbox-gl';

// const inputField = document.getElementById("location-input");
// const submitButton = document.getElementById("submit-button");
// const form = document.querySelector("form");

// const baseURL = "https://api.mapbox.com/geocoding/v5/mapbox.places/";
// const apiToken = "pk.eyJ1IjoiYnJ1bmNreSIsImEiOiJjazZjM3FtNHAxNGU0M2RxanNtZTg5bGN6In0.gH3dsp-WaeDe_iU2Rd-XzA";

// // -------------------- GET --------------------

// const fetchMap = (longitude, latitude) => {
//   mapboxgl.accessToken = apiToken;

//   const map = new mapboxgl.Map({
//     container: 'map',
//     style: 'mapbox://styles/mapbox/streets-v9',
//     center: [longitude, latitude],
//     zoom: 12
//   });

//   const marker = new mapboxgl.Marker()
//     .setLngLat([longitude, latitude])
//     .addTo(map);
// };

// const fetchCoordinates = (city) => {
//   fetch(`${baseURL}${city}.json?access_token=${apiToken}`)
//     .then(response => response.json())
//     .then((data) => {
//       const longitude = data.features[0].geometry.coordinates[0];
//       const latitude = data.features[0].geometry.coordinates[1];

//       document.querySelector(".coordinates").innerText = `${longitude} | ${latitude}`;

//       fetchMap(longitude, latitude);
//     });
// };

// form.addEventListener("submit", (event) => {
//   event.preventDefault();

//   fetchCoordinates(inputField.value);
// });

// fetchCoordinates("São Paulo");
