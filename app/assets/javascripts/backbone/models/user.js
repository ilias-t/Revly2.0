var User = Backbone.Model.extend({
  model: User,
  defaults: {
    "email": "",
    "username": ""
  }
});

// var UserCollection = Backbone.Collection.extend({
  
// });

var User = Backbone.RelationalModel.extend({
  urlRoot: "/users",
  defaults: {
    "email": "",
    "username": ""
  },
  relations: [{
    type: Backbone.HasMany,
    key: "tiles",
    relatedModel: "Tile",
    collectionType: "TileCollection",
    reverseRelation: {
      key: "belongsTo",
      includeInJSON: "id"
    }
  }]
});


