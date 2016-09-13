// Write your Pizza Builder JavaScript in this file.
$(document).ready(function(){
  var startPrice = parseInt($('.price strong').text());
  $('.pepItem').hide();
  $('.mushItem').hide();
  $('.greenItem').hide();
  $('.sauceItem').hide();
  $('.crustItem').hide();

  $('.pep').hide();
  $('.mushroom').hide();
  $('.green-pepper').hide();


  $('.btn-pepperonni').on('click', function(){
    $('.pep').toggle();
    $(this).toggleClass('active');
    $('.pepItem').toggle();

    selectItem(1, this);
  });

  $('.btn-mushrooms').on('click', function(){
    $('.mushroom').toggle();
    $(this).toggleClass('active');
    $('.mushItem').toggle();

    selectItem(1, this);
  })

  $('.btn-green-peppers').on('click', function(){
    $('.green-pepper').toggle();
    $(this).toggleClass('active');
    $('.greenItem').toggle();

    selectItem(1, this);
  })

  $('.btn-sauce').on('click', function(){
    $('.sauce').toggleClass('sauce-white');
    $(this).toggleClass('active');
    $('.sauceItem').toggle();

    selectItem(3, this);
  });

  $('.btn-crust').on('click', function(){
    $('.crust').toggleClass('crust-gluten-free');
    $(this).toggleClass('active');
    $('.crustItem').toggle();

    selectItem(5, this);
  });

function selectItem(price, selector){
  if($(selector).hasClass('active')){
      startPrice += price;
      $('.price strong').text("$" + startPrice);
    } else {
      startPrice -= price;
      $('.price strong').text("$" + startPrice);
    }
}

});
