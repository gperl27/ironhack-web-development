var Viking = require("./lib/viking");
var battle = require("./lib/battle");
var bigBattle = require("./lib/big-battle");

var olaf = new Viking("Olaf", 300, 50);
var balmeer = new Viking("Balmeer", 250, 35);

// var saxon = new Saxon();
// console.log(saxon);

function checkHealth(fighterOne, fighterTwo){
  console.log(`${fighterOne.name} is at ${fighterOne.health} health`);
  console.log(`${fighterTwo.name} is at ${fighterTwo.health} health`)
  if(fighterOne.health <= 0){
    console.log(`${fighterTwo.name.toUpperCase()} WINS!!!`);
  } else if (fighterTwo.health <= 0) {
    console.log(`${fighterOne.name.toUpperCase()} WINS!!!`);
  }
}

function checkSingleHealth(fighter){
  console.log(`${fighter.name} is at ${fighter.health} health`);
  if(fighter.health < 0){
    console.log(`${fighter.name.toUpperCase()} has died :(`);
  } 
}

// PIT FIGHT
// while(olaf.health > 0 && balmeer.health > 0){
//   console.log("");
//   battle(olaf, balmeer);
//   checkHealth(olaf, balmeer);
// }

//BIG FIGHT
while(olaf.health > 0){
  console.log("");
  checkSingleHealth(olaf);
  bigBattle(olaf, 5);
}