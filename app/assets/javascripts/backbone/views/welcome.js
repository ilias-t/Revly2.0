// Functions called on load
$(document).ready(function() {
  singlePageSearch();
});

// Event listeners
function singlePageSearch() {
  $("#search-form").on("submit", function(e) {
    // Prevent the button from sending a request
    e.preventDefault();
    // Get the search query from the search bar
    var searchQuery = $("#search-bar").val();
    // Delete the search bar's content
    $("#search-bar").val("");
    // DO THIS IN BACKBONE INSTEAD
    $.ajax({
      url: "/searchsong?query=" + searchQuery
    }).done(function(data){
      // Sounds have been received
      console.log("We haz received sounds");
      window.soundCloudSoundData = data;
      // formatData(data);
    });
  });
}