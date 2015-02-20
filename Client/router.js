var AppRouter = Backbone.Router.extend ({
  initialize: function (){
    console.log("routes have started!");

  },

  routes: {
  //  "dogs"    : "home",
    "home": "home",
    //"test": "testRouter",
    "" : "home", //// This will be the login page
    "/dogs": "home",
    "dogs/:id": "dogProfile"
  },

  home: function () {
    console.log("home works!")
    var self= this;
    var pupCollection = new PupCollection();

   pupCollection.fetch().then(function () {
     var appView = new Appview({collection: pupCollection});
     self.loadView(appView);
   });



    // var signInRoute = new Appview;
    //  signInRoute.render();


  },

  dogProfile: function () {
    console.log("dogProfile works!");


  },

  dogPound: function () {
    console.log("dogpound route works!");



  },

  loadView: function(view){
    this.view && this.view.remove();
    this.view = view;

  }

  // testRouter: function () {
  //   var testRoute = this.loadView(new testView());
  //
  //   testRoute.render();
  //
  // },

  // signInRouter: function () {
  //   var signInRoute = new SignInView;
  //   signInRoute.render();
  //
  // },

  // dogPound: function () {
  //   var pupCollection = new PupCollection();
  //
  //  pupCollection.fetch().then(function () {
  //    var appView = new Appview({collection: pupCollection});
  //  });
  //
  //
  // }


});
