//javascript
var countColors = require("./lib/color_counter");

var colorArray = ['indigo', 'teal', 'lilac', 'teal', 'periwinkle', 'black', 'periwinkle', 'baby blue', 'teal'];

// console.log(colorArray);


// console.log(countColors("indigo", colorArray) === 1);
// console.log(countColors("periwinkle", colorArray) === 2);
// console.log(countColors("teal", colorArray) === 3);

// console.log(countColors("green", colorArray) === 0);
// console.log(countColors("navy blue", colorArray) === 0);

// (function () { 
//     colorArray.map(function(color){
//     //
//     return color.toUpperCase();
//   });
// })();

var numbers = '80:70:90:100';

function averageColon(numbers){
  if(numbers === undefined ){
    return 0;
  }

  var regex = /\W/;
  return numbers.split(regex)
    .reduce(function(x,y){
    return parseInt(x) + parseInt(y);
  })/numbers.split(regex).length;
}

console.log(averageColon() === 0);
console.log(averageColon("80&70&90&100") === 85 );
console.log(averageColon(numbers) === 85 );

