var TileView = Backbone.View.extend({

});

var TileForm = Backbone.View.extend({
  el: "form",
  events: {
    "submit": "createTile"
  },
  createTile: function(e) {
    e.preventDefault();
    var message = $("#tile_message").val();
  }
});