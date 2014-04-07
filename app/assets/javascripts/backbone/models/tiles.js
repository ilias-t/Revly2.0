var Tile = Backbone.Model.extend({
  urlRoot: "/users/" + gon.currentUser.id + "/tiles",
  defaults: {
    message: ""
  }
});

var TileCollection = Backbone.Collection.extend({
  model: Tile
});