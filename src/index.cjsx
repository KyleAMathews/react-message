React = require 'react'

module.exports = React.createClass
  propTypes:
    type: React.PropTypes.oneOf(['error', 'info', 'warning'])
    messages: React.PropTypes.array

  render: ->
    className = "message--#{@props.type}"

    if @props.messages.length > 0
      messages = @props.messages.map (message) -> <p>{message}</p>
      return (
        <div className={className}>{messages}</div>
      )
    else
      return <noscript />
