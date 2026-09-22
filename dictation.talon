# Dictation
-
type <phrase> | literal <phrase> | say <phrase>:
    # help: Type the phrase
    dictate.phrase(phrase)

period: ". "

phrase <phrase>: insert("{phrase} ")

insert [today's] date:
    # help: Insert today's date
    # TODO: make date format a setting? or use locale?
    date = time.now()
    s = time.format(date, "%b %d, %Y")
    auto_insert(s)

space key:
    # help: Press the space key
    key(space)

press [the] [combo] <key> [key] [[repeated] <number_small> [times]]:
    # help: Press the key(s)
    number_small = number_small or 1
    key(key)
    repeat(number_small - 1)

enter that:
    # help: Press the return/enter key
    key(enter)

spell {letter}+:
    # help: Type the dictated letters
    for l in letter_list: insert(l)

command mode:
    # help: Enable command mode. Use "type", "literal", or "say" to dictate text.
    mode.disable("dictation")
    mode.enable("command")
dictation mode:
    # help: Enables dictation mode. In dictation mode, anything you say that is not a command is interpreted as text to type.
    mode.enable("dictation")

select last dictation: dictate.select_last()
correct last dictation: correct.last()
