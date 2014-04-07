var AppRouter = Backbone.Router.extend({
  routes: {
    "": "index",
    "users/:user_id/tiles/new": "newTile"
  },
  index: function(){
    alert("Index route has been called..");
  },
  newTile: function() {
    alert("You're Posting a new tile!");
  }
});