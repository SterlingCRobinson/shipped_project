// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .


// var boatArr = []
// var job = 0


// function addBoat(boat){
//   boatArr.push(boat)
//   return boatArr
// }

// function delivered(arr) {
//   arr.length = 0
//   console.log(arr)
// }

// function ship(job, boatArr) {
//   let i = 0
//  boatArr.forEach(function(el) {
//     while (job > 0) {
//       if (boatArr[boatArr.length -1] === 10){
//         break;
//       }
//       if (job === 0){
//         break;
//       } else if (boatArr[i] === 10){
//         i++
//       } else {
//       boatArr[i] += 1
//       jobNow = job -= 1
//       }
//     }
//   })  
//   return "Containers remaining: " + jobNow + " " + "Boat inventory: " + boatArr
// }