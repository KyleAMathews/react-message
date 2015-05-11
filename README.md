react-messages
=======================

React component for showing error, warning, and info messages.

## Install
`npm install react-message`

## Usage

```javascript
var Message = require('react-message');

var error = ['Something really bad just happened!!!']

<Message type="error" messages={error} />
```

See more examples on the [demo page](http://kyleamathews.github.io/react-message/).

## CSS
This is a BYOC (Bring Your Own CSS) component.

Each type of message is given a class name like "message--#{messageType}"
so:

* .message--error
* .message--warning
* .message--info

You can also add styles using inline style objects.

To set styles for individual messages use the `messageStyle` prop.

To set styles for the wrapper div, use the `wrapperStyle` prop.

## Demo
http://kyleamathews.github.io/react-message/
