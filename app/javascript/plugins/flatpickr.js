import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

// flatpickr(".datepicker", {
//   rangePlugin: {"plugins": [new rangePlugin({ input: "#secondRangeInput"})]}
//   // minDate: "today",
//   // dateFormat: "Y-m-d",
// })

flatpickr(".datepicker", {
    "plugins": [new rangePlugin({ input: ".secondRangeInput"})]
});


