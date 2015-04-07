React = require('react')
Message = require('../src/index')
Typography = require 'typography'
typography = new Typography()
typography.injectStyles()
{Container} = require 'react-responsive-grid'

Examples = React.createClass
  render: ->
    <Container style={{padding: typography.rhythm(1)}}>
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

      <code>{'<Message style={{background: "blue", color: "yellow"}} type="info" messages={["I have custom styles"]} />'}</code>
      <br />
      <br />
      <Message style={{background: 'blue', color: 'yellow'}} type="info" messages={["I have custom styles"]} />
      <br />
      <br />

      <p>You can pass both strings and elements into <Message></p>
      <code>{'<Message type="info" messages={[<img src="http://fillmurray.com/600/200" />]} />'}</code>
      <br />
      <br />
      <Message type="info" messages={
        [<img src="http://fillmurray.com/600/200" />]}
      />
      <br />
      <br />
    </Container>

React.render((<Examples />), document.body)
