$           = require 'jquery'
templates   = require 'templates'

class ExampleView
  render: (element) ->
    result = templates.example {name:'Jade', css:'sass'}
    $(element).append result

    result = templates["another-example"] {name:'Jade'}
    $(element).append result

module.exports = ExampleView