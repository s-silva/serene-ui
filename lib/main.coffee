root = document.documentElement

module.exports =
  activate: (state) ->
    atom.config.observe 'serene-ui.fontSize', (value) ->
      setFontSize(value)

    atom.config.observe 'serene-ui.tabSizing', (value) ->
      setTabSizing(value)

    atom.config.observe 'serene-ui.hideDockButtons', (value) ->
      setHideDockButtons(value)

    atom.config.observe 'serene-ui.autoHideStatus', (value) ->
      setAutoHideStatus(value)

    # DEPRECATED: This can be removed at some point (added in Atom 1.17/1.18ish)
    # It removes `layoutMode`
    if atom.config.get('serene-ui.layoutMode')
      atom.config.unset('serene-ui.layoutMode')

  deactivate: ->
    unsetFontSize()
    unsetTabSizing()
    unsetHideDockButtons()
    unsetAutoHideStatus()


# Font Size -----------------------

setFontSize = (currentFontSize) ->
  if Number.isInteger(currentFontSize)
    root.style.fontSize = "#{currentFontSize}px"
  else if currentFontSize is 'Auto'
    unsetFontSize()

unsetFontSize = ->
  root.style.fontSize = ''


# Tab Sizing -----------------------

setTabSizing = (tabSizing) ->
  root.setAttribute('theme-serene-ui-tabsizing', tabSizing.toLowerCase())

unsetTabSizing = ->
  root.removeAttribute('theme-serene-ui-tabsizing')


# Dock Buttons -----------------------

setHideDockButtons = (hideDockButtons) ->
  if hideDockButtons
    root.setAttribute('theme-serene-ui-dock-buttons', 'hidden')
  else
    unsetHideDockButtons()

unsetHideDockButtons = ->
  root.removeAttribute('theme-serene-ui-dock-buttons')

# Auto Hide Status -------------------
setAutoHideStatus = (autoHideStatus) ->
  if autoHideStatus
    root.setAttribute('theme-serene-ui-auto-hide-status', true)
  else
    unsetAutoHideStatus()

unsetAutoHideStatus = ->
  root.removeAttribute('theme-serene-ui-auto-hide-status')
