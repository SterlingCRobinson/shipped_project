function status() {
	var job = document.getElementById("j_con").innerHTML
	var boat = document.getElementById("boatArr")

	if (boat === ""){
		job.innerHTML = "Open"
	} else {
		job.innerHTML = "Closed"
	}
}	

window.onload = status()