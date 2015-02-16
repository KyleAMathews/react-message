React = require('react')
Message = require('../src/index')

console.log Message
Examples = React.createClass
  render: ->
    <div>
      <h1>React Message</h1>
      <a href="https://github.com/KyleAMathews/react-message">Github</a>
      <br />
      <br />
      <br />
      <br />
      <code>{"<Message type='error' messages={['I'm an error']} />"}</code>
      <br />
      <br />
      <Message type="error" messages={["I'm an error"]} />
      <br />
      <br />

      <code>{"<Message type='warning' messages={['I'm an warning']} />"}</code>
      <br />
      <br />
      <Message type="warning" messages={["I'm an warning"]} />
      <br />
      <br />

      <code>{'<Message type="info" messages={["I\'m some information", "And a bit extra"]} />'}</code>
      <br />
      <br />
      <Message type="info" messages={["I'm some information", 'And a bit extra']} />
      <br />
      <br />

      <code>{'<Message type="info" messages={[<img src="http://fillmurray.com/600/200" />]} />'}</code>
      <br />
      <br />
      <Message type="info" messages={
        [<img src="http://fillmurray.com/600/200" />]}
      />
      <br />
      <br />
    </div>

React.render((<Examples />), document.body)
