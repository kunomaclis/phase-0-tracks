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
    for (var i = 0; i < 3; i++) {
        console.log(Object.values(subject1));
        console.log(Object.values(subject2));
        if (subject1[i] === subject2[i]) {
            success = true;
        }
        else { 
            success = false;
        }
    }
    console.log(success);
}

var human1 = { age: 25, sex: "male", likes: "pizza" };
var human2 = { age: 54, sex: "female", likes: "pizza" };

matchmaker(human1, human2);

var human3 = { age: 33, sex: "male", likes: "flowers"};
var human4 = { age: 21, sex: "female", likes: "guns"};

matchmaker(human3, human4);

console.log(human1);