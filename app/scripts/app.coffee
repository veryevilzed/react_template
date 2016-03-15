log = (msg) -> console.log msg
widget = require("main")

state =
  project_name: "Project A"
  show:
    jumbotron: true
  menu: ["About", "Resource", "Creation Data"]
  menu_active: "About"
  time: 0
  jumbotron:
    title: "Jumbotron heading"
    text: "Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus."

  menuSelect: (val) ->
    @show = []
    @menu_active = val
    log val
    switch val
      when "About" then @show.jumbotron = true
      when "Resource" then @show.resource = true
      when "Creation Data" then @show.creation_data = true

    do render

render = (data) ->
    state.data = data if data?
    React.render(widget(state), document.getElementById("container"))

query = () ->
  state.time++
  data =
    title: "oo"
  render data

$(document).ready () ->
    setInterval(query, 1000)
    do query

log "workd"
