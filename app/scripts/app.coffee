log = (msg) -> console.log msg
widget = require("main")

state =
  title: "hello"
  show: ["test"]

render = (data) ->
    state.data = data if data?
    log state
    React.render(widget(state), document.getElementById("container"))

query = () ->
  data =
    show: ["test"]
  render data

$(document).ready () ->
    do query

log "workd"
