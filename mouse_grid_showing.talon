# Mouse grid targets
tag: labels.grid_active
-

# Interact with grid
choose <labels.target>:
    # help: Make the grid around the region with the mouse grid label
    labels.select(labels.target)
<labels.target>:
    # help: Make the grid around the region with the mouse grid label
    labels.select(labels.target)
double click [at] <labels.target>:
    # help: Double click at the mouse grid label
    labels.mouse_move(labels.target)
    mouse_click()
    mouse_click()
    labels.hide()
<modifiers> double click [at] <labels.target>:
    # help: Double click at the mouse grid label while pressing the modifier keys
    key("{modifiers}:down")
    labels.mouse_move(labels.target)
    mouse_click()
    mouse_click()
    labels.hide()
    key("{modifiers}:up")
drag [from] <labels.target> to <labels.target>:
    # help: Drag the mouse from the first label to the second label
    labels.mouse_move(labels.target_1)
    sleep(200ms)
    mouse_drag()
    sleep(200ms)
    labels.mouse_move(labels.target_2)
    sleep(200ms)
    mouse_release()
    labels.hide()
drop [at] <labels.target> | release mouse [at] <labels.target> | release hold [at] <labels.target> | end drag [at] <labels.target>:
    # help: Move the mouse to the mouse grid label and stop holding the left mouse button down
    labels.mouse_move(labels.target)
    sleep(200ms)
    mouse_release()
    labels.hide()
long press [at] <labels.target>:
    # help: Click the mouse grid label and hold the left mouse button down for one second before releasing it
    labels.mouse_move(labels.target)
    mouse_drag()
    sleep(1)
    mouse_release()
    labels.hide()
move mouse to <labels.target> | move cursor to <labels.target>:
    # help: Move the mouse to the mouse grid label
    labels.mouse_move(labels.target)
    labels.hide()
click and hold [at] <labels.target> | press and hold <labels.target>:
    # help: Click at the mouse grid label and hold the left mouse button down
    labels.mouse_move(labels.target)
    mouse_drag()
    labels.hide()
<modifiers> click and hold [at] <labels.target>:
    # help: Click at the mouse grid label and hold the left mouse button down while pressing the modifier keys
    key("{modifiers}:down")
    labels.mouse_move(labels.target)
    mouse_drag()
    labels.hide()
    key("{modifiers}:up")
show menu for <labels.target>:
    # help: Right click at the mouse grid label
    labels.mouse_move(labels.target)
    mouse_click(1)
    labels.hide()
click [at] <labels.target> | press <labels.target> | tap <labels.target>:
    # help: Click at the mouse grid label
    labels.mouse_move(labels.target)
    mouse_click()
    labels.hide()
<modifiers> click [at] <labels.target>:
    # help: Click at the mouse grid label while pressing the modifier keys
    key("{modifiers}:down")
    labels.mouse_move(labels.target)
    mouse_click()
    labels.hide()
    key("{modifiers}:up")
start drag [at] <labels.target>:
    # help: Move the mouse to the mouse grid label and hold the left mouse button down without closing the grid
    labels.mouse_move(labels.target)
    sleep(200ms)
    mouse_drag()
triple click [at] <labels.target>:
    # help: Triple click at the mouse grid label
    labels.mouse_move(labels.target)
    mouse_click()
    mouse_click()
    mouse_click()
    labels.hide()
<modifiers> triple click [at] <labels.target>:
    # help: Triple click at the mouse grid label while pressing the modifier keys
    key("{modifiers}:down")
    labels.mouse_move(labels.target)
    mouse_click()
    mouse_click()
    mouse_click()
    labels.hide()
    key("{modifiers}:up")
