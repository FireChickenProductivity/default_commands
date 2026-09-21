# Mouse
click and hold mouse | press and hold mouse:
    # help: Left click and hold the mouse button down
    mouse_drag()
<modifiers> click and hold mouse:
    # help: Left click and hold the mouse button down while pressing the modifier keys
    key("{modifiers}:down")
    mouse_drag()
    key("{modifiers}:up")
release mouse | release hold:
    # help: Stop holding the mouse button down
    mouse_release()
single click [mouse] | click mouse | press mouse | mouse click:
    # help: Left click
    mouse_click()
<modifiers> [mouse] click:
    # help: Left click while pressing the modifier keys
    key("{modifiers}:down")
    mouse_click()
    key("{modifiers}:up")
double click [mouse] | mouse double click:
    # help: Double click
    mouse_click()
    mouse_click()
<modifiers> [mouse] double click:
    # help: Double click while pressing the modifier keys
    key("{modifiers}:down")
    mouse_click()
    mouse_click()
    key("{modifiers}:up")
triple click [mouse] | mouse triple click:
    # help: Triple click
    mouse_click()
    mouse_click()
    mouse_click()
<modifiers> [mouse] triple click:
    # help: Triple click while pressing the modifier keys
    key("{modifiers}:down")
    mouse_click()
    mouse_click()
    mouse_click()
    key("{modifiers}:up")
long press:
    # help: Left click and hold the mouse down for 1 second and then release it
    mouse_drag()
    sleep(1s)
    mouse_release()

move [the] cursor down [by] <number> pixels | move [the] mouse down [by] <number> pixels | move [the] cursor down [by] one pixel | move [the] mouse down [by] one pixel | move [the] cursor down [by] a pixel | move [the] mouse down [by] a pixel:
    # help: Move the mouse down by the given number of pixels
    number = number or 1
    x = mouse_x()
    y = mouse_y()
    mouse_move(x, y + number)
move [the] cursor [to the] left <number> pixels | move [the] mouse [to the] left [by] <number> pixels | move [the] cursor [to the] left [by] one pixel | move [the] mouse [to the] left [by] one pixel | move [the] cursor [to the] left [by] a pixel | move [the] mouse [to the] left [by] a pixel:
    # help: Move the mouse left by the given number of pixels
    number = number or 1
    y = mouse_y()
    x = mouse_x()
    mouse_move(x - number, y)
move [the] cursor [to the] right [by] <number> pixels | move [the] mouse [to the] right [by] <number> pixels | move [the] cursor [to the] right [by] one pixel | move [the] mouse [to the] right [by] one pixel | move [the] cursor [to the] right [by] a pixel | move [the] mouse [to the] right [by] a pixel:
    # help: Move the mouse right by the given number of pixels
    number = number or 1
    x = mouse_x()
    y = mouse_y()
    mouse_move(x + number, y)
move [the] cursor up [by] <number> pixels | move [the] mouse up [by] <number> pixels | move [the] cursor up [by] one pixel | move [the] mouse up [by] one pixel | move [the] cursor up [by] a pixel | move [the] mouse up [by] a pixel:
    # help: Move the mouse up by the given number of pixels
    number = number or 1
    x = mouse_x()
    y = mouse_y()
    mouse_move(x, y - number)

scroll [the] mouse down [<number_small> times]:
    # help: Scroll the mouse wheel down. If a number of times is given, do it that many times.
    number_small = number_small or 1
    mouse_scroll(120)
    repeat(number_small - 1)
scroll [the] mouse up [<number_small> times]:
    # help: Scroll the mouse wheel up. If a number of times is given, do it that many times.
    number_small = number_small or 1
    mouse_scroll(-120)
    repeat(number_small - 1)
scroll [the] mouse right [<number_small> times]:
    # help: Scroll the mouse wheel right. If a number of times is given, do it that many times.
    number_small = number_small or 1
    mouse_scroll(0, 120)
    repeat(number_small - 1)
scroll [the] mouse left [<number_small> times]:
    # help: Scroll the mouse wheel left. If a number of times is given, do it that many times.
    number_small = number_small or 1
    mouse_scroll(0, -120)
    repeat(number_small - 1)