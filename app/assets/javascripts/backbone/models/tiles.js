var Tile = Backbone.Model.extend({
  urlRoot: "/tiles" // How do we correctly nest routes?
});

var TileCollection = Backbone.Collection.extend({
  model: Tile,
  url: "/tiles"
});