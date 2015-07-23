var number = 600851475143
var primes = [];
var largest_prime_factor = function(number) {

  var i = 1;
  while (number != 1) {
    i += 1;
     if (number % i == 0) {
       number /= i;
       primes.push(i);
    }
  }
  return i;
};

var test = function(primes_array) {
  var product = 1;
  primes_array.forEach(function(prod) {
    product *= prod;
  });
  return product;
};

console.log(largest_prime_factor(number));
console.log(primes);
console.log(test(primes));
