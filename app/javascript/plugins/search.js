const submit = document.querySelector('#submit-button')

submit.addEventListener('click', (event) => {
  event.preventDefault();

  const location = document.querySelector('#location-input').value
  const startDate = document.querySelector('#start_date').value
  const endDate = document.querySelector('#end_date').value
  window.open(`/cars?query=${location}&amp;start_date=${startDate}&amp;end_date=${endDate}`,"_self")


// window.open(`/cars?query=${location}&start_date=${startDate}&end_date=${endDate}`,"_self")
