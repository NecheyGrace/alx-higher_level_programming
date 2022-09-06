#!/usr/bin/node
function Factorial (number) {
  if (!number) {
    return (1);
  }
  if (number !== 0) {
    return (number * Factorial(number - 1));
  }
}
const { argv } = require('process');
const number = parseInt(argv[2]);
console.log(Factorial(number));
