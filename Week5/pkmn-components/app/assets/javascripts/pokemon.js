// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

PokemonApp.PokemonComponent = class {
  constructor(pokemonUri){
    this.id = PokemonApp.idFromUri(pokemonUri);
  }

  render() {
    console.log(`Rendering pokemon: # ${this.id}`);

    $.ajax({
      type: 'get',
      url: `/api/v1/pokemon/${this.id}`,
      success: PokemonApp.showPokemonModal,
      error: PokemonApp.handleError
    });
  }

};

PokemonApp.idFromUri = function(pokemonUri){
  var uriSegments = pokemonUri.split("/");
  var secondLast = uriSegments.length - 2;
  return uriSegments[secondLast];
}

$(document).ready(function(){
  $('.js-show-pokemon').on('click', function(e){
    var $button = $(e.currentTarget);
    //console.log($(this));
    
    var pokemonUri = $button.data("pokemon-uri");

    var pokeComponent = new PokemonApp.PokemonComponent(pokemonUri);

    pokeComponent.render();
  });
});

PokemonApp.showPokemonModal = function(response){
  console.log(response);
  var name = response.name;
  var height = response.height;
  var weight = response.weight;
  var index = response.pkdx_id;
  var hp = response.hp;
  var attack = response.attack;
  var defense = response.defense;
  var spAtk = response.sp_atk;
  var spDef = response.sp_def;
  var speed = response.speed;
  var types = response.types;

  $('.index').text(`#${index}`);
  $('.name').text(name);
  $('.height').text(height);
  $('.weight').text(weight);
  $('.hp').text(hp);
  $('.attack').text(attack);
  $('.defense').text(defense);
  $('.sp-attack').text(spAtk);
  $('.sp-defense').text(spDef);
  $('.speed').text(speed);


  $('.types').empty();
  types.forEach(function(type){
    var html = `<li>${type.name}</li>`;

    $('.types').append(html);
  });

  $('.js-pokemon-modal').modal("show");
}

PokemonApp.handleError = function(err){
  console.log("Pokemon Component Error");
  console.log(err.responseText);
}