
//can also set this equal to a var

// var countColors = function
module.exports = function countColors(askingColor, array){
  var count = 0;

  array.forEach(function(color){
    if(askingColor === color){
      count++;
    }
  });
  return count;
}


//module.exports = countColors;