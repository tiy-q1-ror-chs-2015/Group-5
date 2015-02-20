var PupModel = Backbone.Model.extend ({
// urlRoot:'http://tiy-fee-rest.herokuapp.com/collections/yorkiepoo2',
  url: "http://localhost:9000/dogs",
  idAttribute: '_id',
  defaults: {
    name: "Pookie",
    photo: 'dogs/boxer.jpg',
    breed: "Yorkipoo",
    disposition: "sweet",

  },
  initialize: function () {
    console.log("A pup is born!");
  },

  // toJSON: function () {
  //   return {: this.attributes};
  //
  // }
});
