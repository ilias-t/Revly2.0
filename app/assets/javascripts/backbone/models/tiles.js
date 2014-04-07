var Tile = Backbone.RelationalModel.extend({
  urlRoot: "/tiles/"
});

var TileCollection = Backbone.Collection.extend({
  model: Tile
});