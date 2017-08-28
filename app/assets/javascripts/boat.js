function jobsPage(){

	var getJob = document.querySelector("#j_con").innerHTML
	job = parseInt(getJob, 10)
	var getBoat = document.querySelector("#b_con").innerHTML
	boat = parseInt(getBoat, 10)
	var add = document.querySelector("#add_btn")
	var ba = document.querySelector("#boatArr")
	var boatArr = []


	add.addEventListener("click", function(boat){
	  boatArr.push(boat)
	  console.log(boatArr)
	})

	function delivered(boatArr) {
	  boatArr.length = 0
	  console.log(boatArr)
	}

	function ship(job, boatArr) {
	  let i = 0
	  var full = false
	 boatArr.forEach(function(el) {
	    while (job > 0) {
	      if (boatArr[boatArr.length -1] === 10){
	        full = true
	        break;
	      }
	      if (job === 0){
	        break;
	      } else if (boatArr[i] === 10){
	        i++
	      } else {
	      boatArr[i] += 1
	      jobNow = job -= 1
	      }
	    }
	  })  
	  console.log(boatArr, jobNow)
	}
	getJob.innerHTML = job
}

document.addEventListener("turbolinks:load", function(){
	jobsPage()
})