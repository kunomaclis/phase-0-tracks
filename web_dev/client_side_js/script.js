console.log("hello");

function addYellowBorder(event) {
	event.target.style.border = "3px solid yellow";
}

var photo = document.getElementById("llama");
photo.addEventListener("click", addYellowBorder);

var list = document.getElementById("list");
list.addEventListener("click", addYellowBorder);