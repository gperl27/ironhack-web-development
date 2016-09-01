function battle(fighterOne, fighterTwo){
  fighterOne.health -= fighterTwo.strength;
  fighterTwo.health -= fighterOne.strength;

  console.log(`${fighterOne.name} and ${fighterTwo.name} fight!`);
  return fighterOne, fighterTwo;
}

module.exports = battle;