PokemonApp.PokemonEvolutions = class {
  constructor(id, info){
    this.id = id;
    this.info = info;
  }

  render() {
    console.log(`Rendering evolutions for: # ${this.id}`);
  }
}