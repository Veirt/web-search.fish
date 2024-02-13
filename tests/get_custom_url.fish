source ./conf.d/web-search.fish

set -x WEB_SEARCH_repo "https://github.com/search?type=repositories&q="
_web_search_load_custom_engines

@test "correctly get url from a custom search when no query is provided" (
    _web_search_get_url repo
) = "https://github.com/search?type=repositories&q="
@test "correctly get url from a custom search when query is provided" (
    _web_search_get_url repo web-search.fish
) = "https://github.com/search?type=repositories&q=web-search.fish"
