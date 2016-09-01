"use strict";

// function Animal(name, noise){
//   this.name = name;
//   this.noise = noise;
// }

// Animal.prototype.makeNoise = function(){
//   console.log(this.name);
// };

// Animal.prototype.shout = function(){
//   console.log(this.noise.toUpperCase());
// };

class Animal{
  constructor(name, noise){
    this.name = name;
    this.noise = noise;
  }

  makeNoise(){
    console.log(`${this.noise}`);
  }

  shout(){
    console.log(`${this.noise.toUpperCase()}`);
  }
}

module.exports = Animal;