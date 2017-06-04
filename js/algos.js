// write a function that takes an array of words and returns the longest word
// function receives an array
// print the element with the largest amount of letters
// create variable longest at 0
// compare longest with current array index length. 
// maximum length will bubble sort through
function longestWord(array) {
    var longest = "";
    for (var i = 0; i < array.length; i++) {
        if (longest.length < array[i].length) {
            longest = array[i];
        }
    }
    console.log(longest);
}

// driver code 
longestWord(["swag", "peaches", "cream", "carrotmill"]);
longestWord(["bill", "abe", "mitchell", "katherine", "ashley"]);

// Object comparison function 
// take in two objects, if they share a same value pair label return true
// yourFunction({name: "Steven", age: 54}, {name: "Tamir", age: 54}); #  true
// yourFunction({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}); #  true
// if objects don't match, return false!

function matchmaker(subject1, subject2) {
    var success = false
    // pull each value in first object
    for (let x in subject1) {
        // compare it with the other
        if (subject1[x] === subject2[x]) {
            success = true;
        }
        else {
            success = false;
        }
    }
    console.log(success);
}

// driver code to make it so, they both like pizza!
var human1 = { age: 25, sex: "male", likes: "pizza" };
var human2 = { age: 54, sex: "female", likes: "pizza" };

matchmaker(human1, human2); // => true

var human3 = { age: 33, sex: "male", likes: "flowers" };
var human4 = { age: 21, sex: "female", likes: "guns" };

matchmaker(human3, human4); // => false

// random integer to word function 
// take in integer for function input
// return a string with integer amount of randomized words
// words must be of random varying length
// shove it through our longest word function

function randoWord(entry) {
    var alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    console.log(entry)
    var newArray = "";
    for (var i = 0; i < Math.floor(Math.random() * 100); i++) {
        newArray += (alphabet[Math.floor(Math.random() * alphabet.length)]);
    }
            console.log(newArray.split);

}

randoWord(3)
