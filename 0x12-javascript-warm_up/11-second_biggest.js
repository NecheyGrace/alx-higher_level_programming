#!/usr/bin/node

let numbers = process.argv.slice(2);
numbers = numbers.map(number => parseInt(number, 10));

let biggest = 0;
let secondBiggest = 0;

for (const num of numbers) {
  if (num >= biggest) {
    secondBiggest = biggest;
    biggest = num;
  }
  if (num < biggest && num >= secondBiggest) secondBiggest = num;
}

console.log(secondBiggest);
