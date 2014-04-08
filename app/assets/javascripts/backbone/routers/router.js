var AppRouter = Backbone.Router.extend({
  routes: {
    "": "index",
    "users/:user_id/tiles/new": "newTile"
  },

  initialize: function(collection) {
    this.collection = collection;
  },

  index: function(){
    this.loadView(new AllTileView({collection: this.collection})); //FIXME error!!
    alert("Index route has been called..");
  },
  newTile: function() {
    alert("You're Posting a new tile!");
  },

  loadView: function(view) {
    $("body").append(view.el);
  }
});