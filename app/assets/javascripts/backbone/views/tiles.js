var AllTileView = Backbone.View.extend({

  tagName: "ul",

  className: "all-tiles",

  initialize: function() {
    console.log("Initialized AllTileView...");
    this.listenTo(this.collection, "add", this.addOne);
    this.listenTo(this.collection, "reset", this.addAll);
  },

  addAll: function() {
    console.log("adding all tiles!");
    this.collection.each(this.addOne, this); //how does this work?
  },

  addOne: function(tile) {
    console.log("add one tile");
    var view = new TileView({model: tile});
    this.$el.append(view.el);
  }
});

var TileView = Backbone.View.extend({

  tagName: "li",

  events: {
    "click div.tile": "playTile"
  },

  initialize: function() {
    this.template = _.template($("#single-tile-template").html());
    this.listenTo(this.model, "change", this.render);
    this.model.fetch();
    this.render();
  },

  render: function() {
    console.log("Single tile view rendering!");
    console.log(this.template({model: this.model}));
    this.$el.html(this.template({model: this.model}));
  },

  playTile: function() {
    console.log("playing!");
  }
});


// var TileForm = Backbone.View.extend({
//   el: "form",
//   events: {
//     "submit": "createTile"
//   },
//   createTile: function(e) {
//     e.preventDefault();
//     var message = $("#tile_message").val();
//   }
// });