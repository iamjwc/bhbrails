$(function() {
  $('#player').jPlayer({
    supplied: "mp3"
  });

  $('.the-corn-lady ol a').click(function() {
    var href = $(this).attr('href');

    $('#player').jPlayer("pauseOthers");
    $('#player').jPlayer("setMedia", {mp3: href});
    $('#player').jPlayer("play");

    return false
  })
})
