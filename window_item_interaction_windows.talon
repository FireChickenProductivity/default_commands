# Control labels (Windows)
os: windows
-
show names [once]:
    # help: Label accessible controls by name until one is selected
    labels.show_query_names('[is_content_element=1][rect]:is([patterns*="Invoke"], [patterns*="Toggle"], [patterns*="SelectionItem"], [patterns*="LegacyIAccessible"])')
show numbers [once]:
    # help: Label accessible controls by number until one is selected
    labels.show_query('[is_content_element=1][rect]:is([patterns*="Invoke"], [patterns*="Toggle"], [patterns*="SelectionItem"], [patterns*="LegacyIAccessible"])')
show menu numbers:
    # help: Label visible menu items by number
    labels.show_query('[control_type="MenuItem"]:is([patterns*="Invoke"], [patterns*="Toggle"], [patterns*="SelectionItem"], [patterns*="LegacyIAccessible"])')
