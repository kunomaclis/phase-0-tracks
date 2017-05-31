// String reverse function
// Takes in a string and prints out a reversed version "hello" => "olleh"
// split the string into an array, then reverse the array in place. 
// join the strings together

function reverseString(str) {
    // split the method to an array
    var splittedString = str.split("");
    // reverse the array
    var reverseArray = splittedString.reverse();
    // join the reversed array into a string
    var joinArray = reverseArray.join("");
    // return that string
    return joinArray;
}

console.log(reverseString("swagbag"));

var booleanReverse = reverseString("elephant")

if (1 == 1) {
    console.log(booleanReverse)
}
