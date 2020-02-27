const form = document.querySelector('form');

const bg = document.querySelector('.backgroundhome');

form.addEventListener('click', (event) => {
  bg.classList.toggle('blur')
});
