# Control labels (macOS)
os: mac
-
show names [once]:
    # help: Label accessible controls by name until one is selected
    labels.show_query_names("[AXPosition]:action(AXPress)")
show numbers [once]:
    # help: Label accessible controls by number until one is selected
    labels.show_query("[AXPosition]:action(AXPress)")
show menu numbers:
    # help: Label visible menu items by number
    labels.show_query('[AXRole="AXMenuItem"]')
