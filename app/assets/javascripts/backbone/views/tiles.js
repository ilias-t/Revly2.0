var AllTileView = Backbone.View.extend({
  tagName: "ul",
  className: "all-tiles",
  initialize: function() {
    this.listenTo(this.collection, "add", this.addOne);
    this.listenTo(this.collection, "reset", this.addAll);
  },
  addAll: function() {
    this.collection.each(this.addOne, this); //how does this work?
  },
  addOne: function(tile) {
    var view = new TileView({model: tile});
    this.$el.append(view.el);
  }
});

var TileView = Backbone.View.extend({
  tagName: "li",
  className: "each-tile",
  events: {
    "click div.tile": "playTile"
  },
  initialize: function() {
    this.template = _.template($("#single-tile-template").html());
    this.listenTo(this.model, "change", this.render);
    this.render();
  },
  render: function() {
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