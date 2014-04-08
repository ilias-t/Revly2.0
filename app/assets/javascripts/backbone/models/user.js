var UserModel = Backbone.Model.extend({
  urlRoot: "/users",
  defaults: {
    "email": "",
    "username": ""
  }
});