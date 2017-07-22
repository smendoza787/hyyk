$(function() {
  attachButtonListeners();
});

function attachButtonListeners() {
  $('#most-active-btn').click(function() {
    $.get('/users/most_active')
    .done(function(data) {
      console.log(data);
    });
  });

  $('#trail-runner-btn').click(function() {
    $.get('/users/trail_runner')
    .done(function(data) {
      console.log(data);
    });
  });

  $('#rock-climber-btn').click(function() {
    $.get('/users/rock_climber')
    .done(function(data) {
      console.log(data);
    });
  });
}
