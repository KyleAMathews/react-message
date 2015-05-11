React = require 'react'
assign = require 'object-assign'

module.exports = React.createClass
  propTypes:
    type: React.PropTypes.oneOf(['error', 'info', 'warning']).isRequired
    messages: React.PropTypes.array
    messageStyle: React.PropTypes.object
    wrapperStyle: React.PropTypes.object

  getDefaultProps: ->
    messages: []
    messageStyle: {}
    wrapperStyle: {}

  render: ->
    className = "message message--#{@props.type}"

    if @props.messages.length > 0
      messages = @props.messages.map (message, i) =>
        if i + 1 is @props.messages.length
          last = 0
        else if @props.messageStyle.marginBottom
          last = @props.messageStyle.marginBottom
        else
          last = "inherit"

        if React.isValidElement message
          message
        else
          <p style={assign({}, @props.messageStyle, {marginBottom: last})}>{message}</p>
      return (
        <div {...@props} style={@props.wrapperStyle} className={className}>{messages}</div>
      )
    else
      return <noscript />
