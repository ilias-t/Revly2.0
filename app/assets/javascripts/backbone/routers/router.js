var AppRouter = Backbone.Router.extend({
  routes: {
    "": "index",
    "users/:user_id/tiles/new": "newTile" // FIXME
  },
  initialize: function() {
    tiles.fetch(); // Get all tiles from DB
  },
  index: function(){
    tileFeed = new AllTileView({collection: tiles});
    this.loadView(tileFeed);
  },
  newTile: function() {
    alert("You're Posting a new tile!");
  },
  loadView: function(view) {
    window.theview = view;
    $("main[role=main]").append(view.el);
  }
});