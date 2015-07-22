var sum_of_squares = function(num) {
  var sum = 0;
  for (var i = 0; i <= num; i++) {
    sum += Math.pow(i, 2);
  }
  return sum;
}

var squares_sums = function(num) {
  var temp = 0;
    for (var i = 1; i <= num; i++) {
      temp +=i;
    }
  return Math.pow(temp, 2);
}

var difference = function (num) {
  return squares_sums(num) - sum_of_squares(num);
}

console.log(sum_of_squares(100));
console.log(squares_sums(100));
console.log(difference(100));
