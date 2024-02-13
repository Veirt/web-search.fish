source ./conf.d/web-search.fish

@test "correctly get url when no query is provided" (_web_search_get_url google) = "https://www.google.com/search?q="
@test "correctly get url when query is provided" (_web_search_get_url google hello world) = "https://www.google.com/search?q=hello world"
@test "get url of non-existing context" (_web_search_get_url unexisting) $status -eq 1
