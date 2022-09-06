#!/usr/bin/node
const { argv } = require('process');
const number = parseInt(argv[2]);
for (let i = 0; i < number; i++) {
  console.log('C is fun');
}
