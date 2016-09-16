/** DOCUMENT READY **/

$(document).ready(function(){
  $('.search').on('click', trackSearch);

  $('.btn-play').on('click', function(){
    if ($(this).data('playing')){
      playbackStart()
    } else {
      playbackPause()
    }
  });
  
});

/** AUDIO HANDLING **/

function playbackStart(e){
  console.log('play');
  $('.js-player').trigger('play');
  $('.btn-play').data('playing', false); 

  $(`.js-player`).on('timeupdate', printTime);
}

function playbackPause(e){
  console.log('pause');
  $('.js-player').trigger('pause');
  $('.btn-play').data('playing', true);
}

function printTime () {
  var current = $('.js-player').prop('currentTime');
  console.debug('Current time: ' + current);
  //var duration = $('.js-player').prop('duration');
  $('progress').val(current);
  $('.js-player')
}


/** AJAX **/

function trackSearch(e){
  e.preventDefault();

  var track = $('.searchInput').val();

  $.ajax({
    type: 'get',
    url: `https://api.spotify.com/v1/search?type=track&query=${track}`,
    success: handleSearch,
    error: handleError
  });
}

/** HANDLERS **/

function handleSearch(response){
  var track = response.tracks.items[0];

  var trackName = track.name;
  var artistName = track.artists[0].name;
  var albumArt = track.album.images[0].url;
  var trackPreview = track.preview_url;

  $('.title').text(trackName);
  $('.author').text(artistName);
  $('.cover img').attr('src', albumArt);
  $('.js-player').attr('src', trackPreview);
}

function handleError(err){
  console.log(err);
}