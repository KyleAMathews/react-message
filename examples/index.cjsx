React = require('react')
Typography = require 'typography'
typography = new Typography()
typography.injectStyles()

Examples = require './Examples'

React.render((<Examples />), document.body)
