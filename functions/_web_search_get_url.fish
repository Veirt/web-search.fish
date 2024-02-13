function _web_search_get_url
    set -l context_idx (contains -i $argv[1] $_web_search_fish_engines)
    if not test -n "$context_idx"
        return 1
    end

    set -l url $_web_search_fish_engines[(math $context_idx + 1)] # + 1 in this case to get the url

    if test (count $argv) -ge 2
        set query (string escape --style=url $argv[2..-1])
    else
        set query ''
    end

    echo "$url$query"
end
