



var PupView = Backbone.View.extend ({
  template: _.template($('#pupTmpl').html()),
  tagName: 'section',
  initialize: function () {
    console.log("A pup view!")

  },

  events: {
    "click .delete": "removePup",

  },

  render: function () {

    var markup = this.template(this.model.toJSON());
    this.$el.html(markup);

    return this;

  },

  removePup: function () {
    this.$el.remove();
    this.model.destroy();

  }



});


///COLLECTION VIEW

var Appview = Backbone.View.extend({
  el: $('section'),
  initialize: function () {
    console.log('app view initialized!');
  this.addAllPups();




  },
  events: {
    "click .signup": "showCreate",
    "click .createUser": "createPup",


  },


/// SIGNUP///
createPup: function (event) {
  event.preventDefault();

///PUT IN PUP'S INFO///
  var newPup = {
    name: $('#createPup').find('input[name="newName"]').val(),
    photo: $('#createPup').find('input[name="newPhoto"]').val(),
    breed: $('#createPup').find('textarea[name="newBreed"]').val(),
    disposition: $('#createPup').find('input[name="newDisposition"]').val(),
  };

  var newModelPup = new PupModel(newPup);
  newModelPup.save();
  this.collection.add(newModelPup);
  this.addOnePup(newModelPup);
  this.$el.find('#createPup').find('input, textarea').val('');
  this.showCreate();


},


/// ENABLES YOU TO TOGGLE CREATE PUP FORM TO SHOW OR HIDE////
showCreate: function () {

  console.log("signup button works");
  //this.$el.find('#createPup').toggleClass('show');
  $(".logs").toggleClass('hide');
  $(".userPup").show();
  //createPup();

},

addOnePup: function (pup) {
  var pupView = new PupView ({model: pup});
  this.$el.append(pupView.render().el);

 },

addAllPups: function () {

  _.each(this.collection.models, this.addOnePup, this);
},

});

///TEST VIEW////
// var testView = Backbone.View.extend ({
//   el: $('.container'),
//   initialize: function (){
//
//   },
//
//   render: function () {
//     this.$el.html("<h1> This is a test. </h1>");
//     return this
//   }

// });

// var SignInView = Backbone.View.extend ({
//
//   tagName: 'section',
//   initialize: function () {
//     console.log("A pup view!")
//
//   },





// });
