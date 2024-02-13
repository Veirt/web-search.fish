source ./conf.d/web-search.fish

@test "_web_search_fish_engines should be even" (
    math (count $_web_search_fish_engines) % 2
) -eq 0
