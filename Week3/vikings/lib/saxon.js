class Saxon {
  constructor(){
    this.health = Math.floor((Math.random() * 20) + 1);
    this.strength = Math.floor((Math.random() * 10) + 1);
  }
}

module.exports = Saxon;