# Labeled controls
tag: labels.controls_active
-

drag [from] <labels.target> to <labels.target>:
    # help: Drag the mouse from the first labeled component to the second
    labels.mouse_move(labels.target_1)
    sleep(0.2)
    mouse_drag()
    sleep(0.2)
    labels.mouse_move(labels.target_2)
    sleep(0.2)
    mouse_release()
    labels.hide()
drop [at] <labels.target> | release mouse [at] <labels.target> | release hold [at] <labels.target> | end drag [at] <labels.target>:
    # help: Move the mouse to the labeled component and stop holding the left mouse button down
    labels.mouse_move(labels.target)
    sleep(0.2)
    mouse_release()
    labels.hide()

click and hold [at] <labels.target> | press and hold [at] <labels.target>:
    # help: Click the labeled component and hold the left mouse button down
    labels.mouse_move(labels.target)
    mouse_drag()
    labels.hide()
<modifiers> click and hold [at] <labels.target>:
    # help: Click the labeled component and hold the left mouse button down while pressing the modifier keys
    key("{modifiers}:down")
    labels.mouse_move(labels.target)
    mouse_drag()
    labels.hide()
    key("{modifiers}:up")
click <labels.target> | press <labels.target> | tap <labels.target>:
    # help: Click the labeled component
    labels.select(labels.target)
<labels.target>:
    # help: Click the labeled component
    labels.select(labels.target)
<modifiers> click <labels.target>:
    # help: Click the labeled component and while pressing the modifier keys
    key("{modifiers}:down")
    labels.mouse_move(labels.target)
    mouse_click()
    labels.hide()
    key("{modifiers}:up")

show menu for <labels.target>:
    # help: Show the menu for the labeled component
    labels.mouse_move(labels.target)
    mouse_click(1)
    labels.hide()

start drag [at] <labels.target>:
    # help: Hold the left mouse button down at the labeled component without closing the labels
    labels.mouse_move(labels.target)
    mouse_drag()
