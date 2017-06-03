var colors = ["blue", "green", "red", "yellow"];

var horses = ["Spirit", "Kismet", "Centaurie", "Madison"]; // I grew up with horses. 

horses.push("Jackson");
console.log(horses);

colors.push("pink");
console.log(colors);

function horse_color_assigner(horseName, arrayColor) {
    var coloredHorse = {name: horseName, color: arrayColor};
   console.log(coloredHorse);
}

// Go through the colors and horses array and randomly select a horse name and color
horse_color_assigner(horses[Math.floor(Math.random() * horses.length)], colors[Math.floor(Math.random() * colors.length)]);