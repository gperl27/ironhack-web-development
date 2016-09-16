$(document).ready(function(){
  $('.search').on('click', artistSearch);
});

/* AJAX */

function artistSearch (e) {
  e.preventDefault();

  var artist = $('.artist').val();
  
  $.ajax({
    type: 'get',
    url: `https://api.spotify.com/v1/search?type=artist&query=${artist}`,
    success: handleArtistData,
    error: handleError
  });
}

function albumList(e){
  e.preventDefault();
  var id = $(this).attr('id');
  
  $.ajax({
    type: 'get',
    url: `https://api.spotify.com/v1/artists/${id}/albums`,
    success: handleAlbumData,
    error: handleError
  });
}


/* HANDLE EVENTS */

function handleArtistData(response){
  artists = response.artists.items;

  console.log(artists);

  $('.results').append('<h2>Results: </h2>');

  $('.results').empty();

  artists.forEach(function(artist){
    var html = `
    <li id="${artist.id}" class="name">${artist.name}</li>
    <ul class='album-list'></ul>
    `
    
    if(artist.images.length > 0){
      html += `<img src=${artist.images[0].url}>`
    }
    
    $('.results').append(html);
  });

  $('.name').on('click', albumList);
}

function handleAlbumData(response){
  $('.albums').empty();
  console.log(response);
  var albums = response.items;

  console.log(albums);

  albums.forEach(function(album){
    console.log(album.name);
    var html = `<li>${album.name}</li>`

    $('.albums').append(html);
  });
}

function handleError(err){
  console.log('Error');
  console.log(err);
}