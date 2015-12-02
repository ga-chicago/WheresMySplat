// your custom application
var app = app || {};
window.onload = function() {

  // comment out for prod
  console.log('application loaded');

  class Model {
    constructor(properties) {
      this.properties = properties;
    }

    toObject() {
      return this.properties;
    }
  }

  console.log(Model);
  var m = new Model({ name: "test"});
  console.log(m.toObject());

}
