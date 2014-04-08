var TileCollection = Backbone.Collection.extend({
  model: TileModel,
  url: "/tiles"
});