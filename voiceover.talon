# VoiceOver
os: mac
-

voiceover activate | voiceover press:
    # help: Perform the default action for the current item
    key(ctrl-alt-space)
voiceover interact | voiceover drill in:
    # help: Interact with an area or group
    key(ctrl-alt-shift-down)
voiceover read all:
    # help: Read the entire text
    key(ctrl-alt-a)
voiceover next heading:
    # help: Move to the next heading
    key(ctrl-alt-cmd-h)
voiceover next link:
    # help: Move to the next link
    key(ctrl-alt-cmd-l)
voiceover previous heading:
    # help: Move to the previous heading
    key(ctrl-alt-shift-cmd-h)
voiceover previous link:
    # help: Move to the previous link
    key(ctrl-alt-shift-cmd-l)
voiceover find [text]:
    # help: Open Voiceover's text search
    key(ctrl-alt-f)
voiceover find [text] backward:
    # help: Move the text search backward
    key(ctrl-alt-shift-g)
voiceover find [text] forward:
    # help: Move the text search forward
    key(ctrl-alt-g)
voiceover select next item:
    # help: Select the next item
    key(ctrl-alt-right)
voiceover select previous item:
    # help: Select the previous item
    key(ctrl-alt-left)
voiceover actions:
    # help: Open the Voiceover action menu for the current item
    key(ctrl-alt-cmd-space)
voiceover applications:
    # help: Open the Voiceover application chooser
    key(ctrl-alt-fn-f1)
    sleep(0.2)
    key(ctrl-alt-fn-f1)
voiceover commands:
    # help: Open the Voiceover command help menu
    key(ctrl-alt-h)
    sleep(0.2)
    key(ctrl-alt-h)
voiceover contextual menu:
    # help: Perform a secondary click on the current item
    key(ctrl-alt-shift-m)
voiceover [show] item chooser:
    # help: Open the Voiceover item chooser
    key(ctrl-alt-i)
voiceover notification menu:
    # help: Open the Voiceover notification menu
    key(ctrl-alt-n)
voiceover rotor:
    # help: Open the Voiceover rotor for navigation
    key(ctrl-alt-u)
voiceover verbosity [rotor]:
    # help: Open the Voiceover verbosity rotor for changing the verbosity level
    key(ctrl-alt-v)
voiceover help:
    # help: Hear the help tag for the current item if one is available
    key(ctrl-alt-shift-h)
voiceover hint | voiceover give me a hint:
    # help: Hear the hint for the current item if one is available
    key(ctrl-alt-shift-n)
voiceover describe image:
    # help: Describe the current image
    key(ctrl-alt-shift-l)
voiceover where am i | voiceover orientation:
    # help: Describe the current item
    key(ctrl-alt-fn-f3)
voiceover stop interacting | voiceover stop interact | voiceover drill out:
    # help: Exit an area or group
    key(ctrl-alt-shift-up)
