
const submit = document.querySelector('#submit-button')
submit.addEventListener('click', function (event) {
  event.preventDefault();
  const location = document.querySelector('#location-input').value
  window.open(`/cars?query=${location}`,"_self")
});
