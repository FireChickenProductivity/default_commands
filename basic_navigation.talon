# Basic navigation
next app | next application:
    # help: Focus the next application. This will cycle through all the open applications if you keep using it.
    app.next()
previous app | previous application:
    # help: Focus the previously focused application. This does not cycle through the applications.
    app.previous()
show app windows | show application windows:
    # help: Show all the windows for the current application.
    app.windows_show()

close [this] window:
    # help: Close the currently focused window
    app.window_close()

find the text <phrase>:
    # help: Search for the text in the current application or document
    text = "{phrase}"
    edit.find(text)
find next:
    # help: Move to the next search result
    edit.find_next()

toggle [the] desktop:
    app.desktop_toggle()

close menu | cancel menu:
    # help: Close the open popup menu
    key(escape)

[open] mission control:
    # help: Show all of the open windows
    app.desktop_show_windows()

go to previous field | previous field:
    # help: Focus the previous field
    key(shift-tab)
go to next field | next field | tab key:
    # help: Focus the next field
    key(tab)

minimize [this] window:
    # help: Minimize the currently focused window
    app.window_minimize()

[make] new item | new window:
    # help: Open a new window for the current application
    app.window_open()

open [a] document:
    edit.open()

quit {apps.running}:
    # help: Exit the application
    apps.focus(apps.running)
    app.quit()
quit [this] application:
    # help: Exit the current application
    app.quit()

repeat [that] [again] <number_small> times | repeat [that] [again] <number_small> | repeat that [one time]:
    # help: Repeat the previous command the given number of times.
    core.repeat_command(number_small or 1)
save [this] document:
    # help: Save the current document
    edit.save()

open {apps.list} | launch {apps.list}:
    # help: Start the application
    apps.launch(apps.list)

# show {apps.running}: disabled due to an unknown conflict with `show numbers`.
switch to {apps.running} | focus {apps.running}:
    # help: Focus the application
    apps.focus(apps.running)

stop listening [to me] | go to sleep:
    # help: Make Talon stop listening for commands
    speech.disable()

enter full screen:
    # help: Fullscreen the currently focused window
    app.window_fullscreen(true)
exit full screen:
    # help: Make the currently focused window no longer fullscreen
    app.window_fullscreen(false)
zoom window | maximize window:
    # help: Maximize the currently focused window
    app.window_maximize()

scroll [page] down:
    # help: Scroll the page down
    edit.page_down()
scroll [page] up:
    # help: Scroll the page up
    edit.page_up()
scroll to [the] bottom | scroll to [the] end:
    # help: Scroll the page to the end
    edit.file_end()
scroll to [the] top | scroll to [the] beginning:
    # help: Scroll the page the beginning
    edit.file_start()
