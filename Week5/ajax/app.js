
$(document).ready(function(){
  $(".js-fetch-characters").on("click", fetchCharacters);
  //$(".js-add-characters").on("click", addCharacters);
  $(".js-add-characters").on("click", addNewCharacter);
});

function fetchCharacters() {
  // console.log("Fetch chars click");

  $.ajax({
    type: "GET",
    url: "https://ironhack-characters.herokuapp.com/characters",
    success: showCharacters,
    error: handleError
  });
}

function addNewCharacter(e){
  e.preventDefault();
  console.log(e);
  console.log('test');

  var str = $("form").serialize();
  console.log(str);

  // var name = $(".name").val();
  // var occupation = $(".occupation").val();
  // var weapon = $(".weapon").val();
  

  // var newChar = {
  //   name: name,
  //   occupation: occupation,
  //   weapon: weapon
  // };

  $.ajax({
    type: "POST",
    url: "https://ironhack-characters.herokuapp.com/characters",
    data: str,
    success: updateList,
    error: handleError
  });

}

// function addCharacters() {
//   // console.log('wired');
//   var newChar = {
//     name: "Noobacca",
//     occupation: "king of nubs",
//     weapon: "nerf gun"
//   };

//   $.ajax({
//     type: "POST",
//     url: "https://ironhack-characters.herokuapp.com/characters",
//     data: newChar,
//     success: updateList,
//     error: handleError
//   });
// }

function updateList(response){
  fetchCharacters(response);
}



function showCharacters(response){
  var len = response.length-1
  console.log(response[len]);
  response.forEach(function(char){
    var html = `
      <li>
        <h2> ${char.name} </h2>
        <p> ${char.occupation} </p>
        <p> ${char.weapon} </p>
      </li>
    `;
    $('.js-characters-list').append(html);
  });
}

function handleError(error){
  console.log("Error!");
  console.log(error.responseText);
  alert("Error");
}