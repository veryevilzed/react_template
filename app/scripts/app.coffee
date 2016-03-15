log = (msg) -> console.log msg
widget = require("main")

state =
  title: "hello"
  show: []
  shows: "test"
  switchValue: (val) ->
    @show[val] = !@show[val]
    do render

render = (data) ->
    state.data = data if data?
    React.render(widget(state), document.getElementById("container"))

query = () ->
  data =
    show: ["test"]
  render data

$(document).ready () ->
    do query

log "workd"
