const form = document.querySelector('form');

const bg = document.querySelector('.backgroundhome');

const tagLine = document.querySelector('h2');

form.addEventListener('click', (event) => {
  bg.classList.add('blur');
  tagLine.classList.add('blur');
});
