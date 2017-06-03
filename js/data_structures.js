var colors = ["blue", "green", "red", "yellow"];

var horses = ["Spirit", "Kismet", "Centaurie", "Madison"]; // I grew up with horses. 

horses.push("Jackson");
console.log(horses);

colors.push("pink");
console.log(colors);

function horse_color_assigner(horseName, arrayColor) {
    var coloredHorse = { name: horseName, color: arrayColor };
    console.log(coloredHorse);
}

// Go through the colors and horses array and randomly select a horse name and color
horse_color_assigner(horses[Math.floor(Math.random() * horses.length)], colors[Math.floor(Math.random() * colors.length)]);

//car time...

function Car(size, manufacturer, speed) {
    console.log("This fresh ride:", this);
    // listed .this
    this.size = size;
    this.manufacturer = manufacturer;
    this.speed = speed;

    this.zoom = function () { console.log("zoom zoom!!!"); };

    console.log("Car builder is a buildin!");
}

console.log("Adding car to car builder...")
var firstCar = new Car("Medium", "Ford", "Fast");
console.log(firstCar);
console.log("Look at it go!");
firstCar.zoom();
console.log("-----")

console.log("Here comes another car.")
var secondCar = new Car("large", "Chevy", "slow");
console.log(secondCar);
console.log("Look at it go!");
secondCar.zoom();
console.log("-----")