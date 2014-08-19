var React = require('react');
var Message = require('../src/index');

React.renderComponent(React.DOM.div(null, [
  React.DOM.code(null, "<Message type='error' messages={['I'm an error']} />"),
  React.DOM.br(),
  React.DOM.br(),
  Message({type:"error", messages:["I'm an error"]}),
  React.DOM.code(null, "<Message type='warning' messages={['I'm a warning']} />"),
  React.DOM.br(),
  React.DOM.br(),
  Message({type:"warning", messages:["I'm a warning"]}),
  React.DOM.code(null, "<Message type='info' messages={['I'm some information', 'And a bit extra']} />"),
  React.DOM.br(),
  React.DOM.br(),
  Message({type:"info", messages:["I'm some information", "And a bit extra"]})
  ]), document.body);
