import Swal from 'sweetalert2'

const submit_booking = document.querySelector('#new_booking');
submit_booking.addEventListener('submit', (event) => {
   Swal.fire({
    title: 'Congratulations, your rental has been accepted!',
    imageUrl: 'https://media.giphy.com/media/3ov9jWu7BuHufyLs7m/giphy.gif',
    imageWidth: 400,
    imageHeight: 200,
    imageAlt: 'Custom image',
    backdrop: `
      rgba(0,0,123,0.4)

    `
  })
})
