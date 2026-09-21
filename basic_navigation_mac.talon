# Basic navigation (macOS)
os: mac
-
next window:
    # help: Focus the next window of the current application
    key(cmd-`)
previous window:
    # help: Focus the previous window of the current application
    key(cmd-shift-`)

hide {apps.running}:
    # help: Hide the application
    apps.focus(apps.running)
    sleep(0.5)
    app.hide()
hide [this] application:
    # help: Hide the currently focused application
    app.hide()

toggle [the] dock:
    # help: Toggle Dock auto-hide
    key(symbolic_toggle_dock_autohide)

next space:
    # help: Go to the next space (virtual desktop) in mission control
    key(symbolic_space_right)
previous space:
    # help: Go to the previous space (virtual desktop) in mission control
    key(symbolic_space_left)

search spotlight for <phrase>:
    # help: Search for the text in Spotlight
    key(symbolic_spotlight_search_field)
    sleep(100ms)
    auto_insert(phrase)
    apps.focus("Spotlight")

open siri | show siri | launch siri | switch to siri:
    # help: Start Siri
    apps.launch("/System/Library/CoreServices/Siri.app")
