# Corrections
tag: correct.active
-

make correction:
    # help: Accept the manually inputted correction in the correction options window
    correct.accept()
correction <number>:
    # help: Accept the provided correction option with the given number in the correction options window
    correct.choose(number)
dismiss corrections:
    # help: Stop showing the correction options window
    correct.cancel()
replace with <phrase>: correct.replace("{phrase}")
key(escape): correct.cancel()
