var AppRouter = Backbone.Router.extend({
  routes: {
    "": "index",
    "users/:user_id/tiles/new": "newTile" // FIXME
  },

  index: function(){
    this.loadView(new AllTileView({collection: tiles}));
    
  },
  newTile: function() {
    alert("You're Posting a new tile!");
  },

  loadView: function(view) {
    console.log(view);
    window.theview = view;
    $("body").append(view.el);
  }
});