const cardimg = document.querySelectorAll('.card');
const background = document.querySelector('.cardbig');

cardimg.forEach((element) => {
  element.addEventListener('click', (event) => {  const key = event.currentTarget.dataset.carId
  const hiddencard = document.querySelector(`[data-car-hidden-id='${key}']`);
  const closecard = document.querySelector(`[data-close-hidden-id='${key}']`);
    hiddencard.classList.toggle("hidden");
    hiddencard.classList.toggle("floatcard");
    background.classList.toggle("hidden");
  closecard.addEventListener('click', (event) => {
    hiddencard.classList.add("hidden");
    background.classList.toggle("hidden");
  });
 });
});
