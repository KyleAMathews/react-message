var React = require('react');
var Messages = require('../src/index');

React.renderComponent(React.DOM.div(null, [
  Messages({type:"error", messages:["I'm an error"]}),
  Messages({type:"warning", messages:["I'm an warning"]}),
  Messages({type:"info", messages:["I'm some information"]})
  ]), document.body);
