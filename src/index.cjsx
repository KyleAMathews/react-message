React = require 'react'

module.exports = React.createClass
  propTypes:
    type: React.PropTypes.oneOf(['error', 'info', 'warning']).isRequired
    messages: React.PropTypes.array

  getDefaultProps: ->
    messages: []

  render: ->
    className = "message message--#{@props.type}"

    if @props.messages.length > 0
      messages = @props.messages.map (message, i) =>
        if i + 1 is @props.messages.length
          last = 0
        else
          last = "inherit"

        if React.isValidElement message
          message
        else
          <p style={{marginBottom: last}}>{message}</p>
      return (
        <div {...@props} className={className}>{messages}</div>
      )
    else
      return <noscript />
