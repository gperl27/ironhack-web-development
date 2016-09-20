$(document).on("turbolinks:load", function(){

  $('.add').on('click', addIngredient);

});

function addIngredient(e){
  console.log('adding');

  var ingredientId = $(e.currentTarget).data("ing");
  var sandwichId = $(e.currentTarget).data("sandwich");

  var ingredient = {
    ingredient_id: ingredientId
  }

  $.ajax({
    type: 'post', 
    url: `/api/sandwiches/${sandwichId}/ingredients/add`,
    data: ingredient,
    success: handleSuccess,
    error: handleError
  });
}


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

function handleSuccess(response){
  console.log(response);
  // console.log("fghgjhjghfghgjhggytuy");
  // console.log(id);

  // var sandwichId = id;

  // $.ajax({
  //   type: 'get',
  //   url: `/sandwiches/${sandwichId}`,
  //   success: handleUpdate,
  //   error: handleError
  // });

  //$('.add').on('click', addIngredient);
}

function handleUpdate(response){
  console.log(typeof response);
  // console.log(response);
  console.log('Successful render');

  //$('.ingredient_list').empty();
}

function handleError(error){
  console.log('ERROR');
  console.log(error.responseText);
}