var PupCollection = Backbone.Collection.extend({
url: "http://localhost:9000/dogs",
///url: 'http://tiy-fee-rest.herokuapp.com/collections/yorkiepoo2',
  model: PupModel
});
