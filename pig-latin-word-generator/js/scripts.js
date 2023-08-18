function toPigLatin(word) {
    var vowelArray = ["a", "e", "i", "o", "u"];
    var wordArray = word.split("");
    var qArray = ["q"];
    var noVowel = false;
    var i = 0;
    var x = [];
    var y = [];

    if (vowelArray.indexOf(wordArray[0]) !== -1) {
        return word + "ay";
    } else {
        while (vowelArray.indexOf(wordArray[i]) === -1) {
            if (wordArray[i] === "q") {
                var x = wordArray.slice(0, i + 2);
                var y = wordArray.slice(i + 2, word.length);
                i++
            } else {
                var x = wordArray.slice(0, i + 1);
                var y = wordArray.slice(i + 1, word.length);
                i++
            }
        }

        return y.join("") + x.join("") + "ay";
    }

    // if (vowelArray.indexOf(wordArray[0]) !== -1) {
    //     return word + "ay";
    // } else if (wordArray[0] === "q") {
    //     var x = wordArray.slice(0, 2);
    //     console.log("x = " + x);
    //     var y = wordArray.slice(2, word.length);
    //     console.log("y = " + y);
    // } else if (wordArray[1] === "q") {
    //     var x = wordArray.slice(0, 3);
    //     console.log("x = " + x);
    //     var y = wordArray.slice(3, word.length);
    //     console.log("y = " + y);
    // } else {
    //     while (vowelArray.indexOf(wordArray[i]) === -1) {
    //         var x = wordArray.slice(0, i + 1);
    //         console.log("x = " + x);
    //         var y = wordArray.slice(i + 1, word.length);
    //         console.log("y = " + y);
    //         i++
    //     }
    // }

}
