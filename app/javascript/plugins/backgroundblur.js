const form = document.querySelector('form');

const bg = document.querySelector('.backgroundhome');

const tagLine = document.querySelector('h2');

form.addEventListener('click', (event) => {
  bg.classList.toggle('blur');
  tagLine.classList.toggle('blur');
});
