React = require('react')
Message = require('../src/index')
{Container} = require 'react-responsive-grid'
Typography = require 'typography'
typography = new Typography()

module.exports = React.createClass
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
      <Message
        wrapperStyle={{background: 'inherit', padding: 0}}
        messageStyle={{
          background: 'orange'
          color: 'black'
          marginBottom: typography.rhythm(1/2)
          padding: typography.rhythm(1)
        }}
        type="info"
        messages={["I have custom message styles", "yo 2nd message"]}
      />
      <br />
      <br />
      <Message wrapperStyle={{background: 'blue', color: 'yellow'}} type="info" messages={["I have custom styles for the wrapper div", "yo 2nd message"]} />
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
