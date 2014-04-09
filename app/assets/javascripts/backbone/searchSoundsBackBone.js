$(document).ready(function() {
  console.log("search model");
  // window.searchModel = new SoundSearchModel();
  window.searchCollection = new SoundSearchCollection();
});


// Model
var SoundSearchModel = Backbone.Model.extend({
  urlRoot: "/searchsong"
});

// Collection
var SoundSearchCollection = Backbone.Collection.extend({
  model: SoundSearchModel,
  url: "/searchsong"
});

// View FIXME
var SoundSearchView = Backbone.View.extend({
  tagName: "ul",
  className: "sound-search-results",
  events: {
    // some events
  },
  initialize: function() {
    this.template = _.template($("#search-result-template").html());
    this.listenTo(this.collection, "reset", this.addAll);
    this.render();
  },
  render: function() {
    var view = this.$el.html(this.template({collection: this.collection}));
    $("main[role=main]").append(view.el);
  }
});

