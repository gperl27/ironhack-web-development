var Saxon = require("./saxon");

function bigBattle(fighter, turns){
  var saxon = new Saxon();
  fighter.health -= saxon.strength;

  console.log(`${fighter.name} slays another Saxon`);

  return fighter;

}

module.exports = bigBattle;