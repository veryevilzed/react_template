log = (msg) -> console.log msg
widget = require("main")

state =
  title: "hello"
  show: ["test"]

render = (data) ->
    state.data = data if data?
    React.render(widget(state), document.getElementById("container"))

log "workd"
