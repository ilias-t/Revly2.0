var TileModel = Backbone.Model.extend({
  urlRoot: "/users/" + gon.currentUser.id + "/tiles",
  defaults: {
    message: "",
    sound_id: ""
  }
});