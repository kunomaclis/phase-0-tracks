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

// 