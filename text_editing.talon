# Text editing
copy that | copy this | copy [the] selection:
    # help: Copy the selected text
    edit.copy()

cut that | cut this | cut [the] selection:
    # help: Cut the selected text
    edit.cut()

paste that | paste this | paste [[the] clipboard] here:
    # help: Paste the contents of the clipboard at the cursor
    edit.paste()

redo that | redo this:
    # help: Redo the last undo
    edit.redo()

undo that | undo this | scratch that:
    # help: Undo the last change
    edit.undo()

capitalize that | capitalize this | capitalize [the] selection | cap that | cap this | cap [the] selection:
    # help: Make the selected text capitalized
    text = edit.selected_text()
    start = string.slice(text, 0, 1)
    start = start or ""
    start = string.upper(start)
    rest = string.slice(text, 1)
    rest = rest or ""
    if text: insert("{start}{rest}")

correct that | correct this | correct [the] selection:
    # help: Open the correction window showing correction options for the selected text
    correct.show()

bold that | bold this | bold [the] selection:
    # help: Bold the selection
    edit.bold()
italicize that | italicize this | italicize [the] selection:
    # help: Italicize the selection
    edit.italic()
underline that | underline this | underline [the] selection:
    # help: Underline the selection
    edit.underline()

lowercase that | lowercase this | lowercase [the] selection:
    # help: Make the selected text lowercase
    text = edit.selected_text()
    if text: insert(string.lower(text))

put [curly] braces around that | put [curly] braces around [the] selection:
    # help: Put curly braces around the selected text
    text = edit.selected_text()
    paste("{{{text}}}")
put [double] curly quotes around that | put [double] curly quotes around [the] selection | curly quote that | put [double] smart quotes around that | put [double] smart quotes around [the] selection | smart quote that:
    # help: Put double curly quotes around the selected text
    text = edit.selected_text()
    paste('“{text}”')
put [double] quotes around that | put [double] quotes around [the] selection | quote that:
    # help: Put double quotes around the selected text
    text = edit.selected_text()
    paste('"{text}"')
put parentheses around that | put parentheses around [the] selection:
    # help: Put parentheses around the selected text
    text = edit.selected_text()
    paste("({text})")
put single curly quotes around that | put single curly quotes around [the] selection | put single smart quotes around that | put single smart quotes around [the] selection:
    # help: Put single curly quotes around the selected text
    text = edit.selected_text()
    paste("‘{text}’")
put single quotes around that | put single quotes around [the] selection:
    # help: Put single quotes around the selected text
    text = edit.selected_text()
    paste("'{text}'")
put [square] brackets around that | put [square] brackets around [the] selection:
    # help: Put square brackets around the selected text
    text = edit.selected_text()
    paste("[{text}]")

uppercase that | uppercase this | uppercase [the] selection:
    # help: Make the selected text uppercase
    text = edit.selected_text()
    if text: insert(string.upper(text))

capitalize <edit.target>:
    # help: Capitalize the target text
    edit.target_capitalize(edit.target)
lowercase <edit.target>:
    # help: Lowercase the target text
    edit.target_lower(edit.target)
uppercase <edit.target>:
    # help: Uppercase the target text
    edit.target_upper(edit.target)

replace <edit.target> with <phrase> | change <edit.target> to <phrase>:
    # help: Replace the target text with the phrase
    edit.target_replace(edit.target, "{phrase}")

correct [the word] <edit.target>:
    # help: Open the correction window and show correction options for the target text
    correct.target(edit.target)

bold <edit.target>:
    # help: Bold the target text
    edit.target_bold(edit.target)

italicize <edit.target>:
    # help: Italicize the target text
    edit.target_italic(edit.target)

underline <edit.target>:
    # help: Underline the target text
    edit.target_underline(edit.target)

insert <phrase> after <edit.target>:
    # help: Insert the phrase after the target text
    edit.target_insert_after(edit.target, " {phrase}")
insert <phrase> before <edit.target>:
    # help: Insert the phrase before the target text
    edit.target_insert_before(edit.target, "{phrase} ")

put [curly] braces around <edit.target>:
    # help: Put curly braces around the target text
    edit.target_wrap(edit.target, "{", "}")
put [double] curly quotes around <edit.target> | put [double] smart quotes around <edit.target>:
    # help: Put double curly quotes around the target text
    edit.target_wrap(edit.target, '“', "”")
put [double] quotes around <edit.target>:
    # help: Put double quotes around the target text
    edit.target_wrap(edit.target, '"', '"')
put parentheses around <edit.target>:
    # help: Put parentheses around the target text
    edit.target_wrap(edit.target, '(', ')')
put single curly quotes around <edit.target> | put single smart quotes around <edit.target>:
    # help: Put single curly quotes around the target text
    edit.target_wrap(edit.target, "‘", "’")
put single quotes around <edit.target>:
    # help: Put single quotes around the target text
    edit.target_wrap(edit.target, "'", "'")
put [square] brackets around <edit.target>:
    # help: Put square brackets around the target text
    edit.target_wrap(edit.target, "[", "]")
