'use strict';

class Car{
  constructor(model, noise){
    this.model = model;
    this.noise = noise;
    this.wheels = 4;
  }
  makeNoise(){
    console.log(`This car goes: ${this.noise}`);
  }
}

module.exports = Car;