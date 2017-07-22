// when document is ready
$(() => {
  attachShowUsers();
});

// attaches GET request to show users
function attachShowUsers() {
  $('.show-users-btn').click(function() {
    var id = $(this).data("id");
    $.get(`/trails/${id}.json`)
    .done(function(trail) {
      var users = trail['users'];
      if (users.length) {
        var html = '<h3 class="text-center">Hyykers</h3>';
        users.forEach(function(user) {
          html += `
            <div class="trail-user-box">
              <h4>${user['name']}</h4>
            </div>
          `;
        });
        $(`#trail-users-${trail['id']}`).html(html);
      }
    });
  });
}


// function displayTrails() {
//   $.get('/trails.json', function(trails) {
//     var html = ""
//     trails.forEach(function(trail) {
//       html += `
//       <div class="trail-div text-center">
//       <div class="trail-stuff">
//       <div class="trail-info">
//       <img src="/assets/hyyk-img.jpg" class="hyyk-img">
//       <h2>${trail.name}</h2>
//       <p><i class="fa fa-location-arrow" aria-hidden="true"></i>${trail.location}</p>
//       </div>
//       <div class="trail-attributes">
//       <h3>${trail.distance} mi.</h3>
//       <p>Distance</p>
//       <h3>${trail.elevation} ft</h3>
//       <p>Elevation</p>
//       <h3>${trail.trail_type}</h3>
//       <p>Trail Type</p>
//       </div>
//       </div>
//       </div>
//       `;
//     });
//     $('#index-trails').html(html);
//   });
// }
