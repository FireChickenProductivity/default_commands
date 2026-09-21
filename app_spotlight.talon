# Spotlight
os: mac
app.bundle: com.apple.Spotlight
-
close spotlight | quit spotlight | cancel spotlight:
    # help: Close spotlight
    key(symbolic_spotlight_search_field)
[move to] next [search] result | [move to] next [search] results:
    # help: Move to the next spotlight search result
    key(down)
open result | open selection | open that:
    # help: Choose the selected spotlight search result
    key(enter)
[move to] previous [search] result | [move to] previous [search] results:
    # help: Move to the previous spotlight search result
    key(up)
