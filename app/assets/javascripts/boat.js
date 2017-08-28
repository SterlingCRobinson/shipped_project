function jobsPage(){

	j = document.querySelector("#j_con")
	b = document.querySelector("#b_con")
	var getJob = j.innerHTML
	job = parseInt(getJob, 10)
	var getBoat = b.innerHTML
	boat = parseInt(getBoat, 10)
	var getName = document.querySelector("#b_name").innerHTML
	var add = document.querySelector("#add_btn")
	var ba = document.querySelector("#boatArr")
	var boatArr = []
	var boatName = []

	add.addEventListener("click", function(e){
	  boatArr.push(boat)
	  boatName.push(getName)
	//   if (boat === 10) {
	//   	add.addEventListener("click", function(e) {
 //      e.target.disabled = "true";
	//   })
	// }
		ba.innerHTML = boatName
})
	function delivered(boatArr) {
	  boatArr.length = 0
	  console.log(boatArr)
	}

	var shipIt = document.querySelector("#ship")

	function ship(job, boatArr) {
	  let i = 0
	  var full = false
	 boatArr.forEach(function(el) {
	    while (job > 0) {
	      if (boatArr[boatArr.length -1] === 10){
	        full = true
	        add.disabled = "true";
	        b.innerHTML = "Full"
	        break;
	      }
	      if (job === 0){
	        break;
	      } else if (boatArr[i] === 10){
	        i++
	      } else {
	      boatArr[i] += 1
	      jobNow = job -= 1
	      boat = boatArr[i]
	      b.innerHTML = boat
	      }
	    }
	  })  
	  console.log(boatArr, jobNow, boat)
	  j.innerHTML = jobNow
	  if (job === 0){
	  	j.innerHTML = "Complete!"
	  }
	}

	shipIt.addEventListener("click", function(){
		ship(job, boatArr)
	})
}

document.addEventListener("turbolinks:load", function(){
	jobsPage()
})