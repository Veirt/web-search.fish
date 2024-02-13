function _web_search_load_custom_engines
    if test $_web_search_fish_custom_loaded -eq 0
        set -l custom_env_engines (env | grep ^WEB_SEARCH)
        set -l custom_search_engines (string split '\n' $custom_env_engines)
        for engine in $custom_search_engines
            set -l search_engine (string split -m 1 = $engine)
            set -l context (echo $search_engine[1] | string sub -s 12)
            set -l url $search_engine[2]

            set -a _web_search_fish_engines $context $url
        end
    end
    set -g _web_search_fish_custom_loaded 1
end

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

function _web_search_get_open_cmd
    switch (uname)
        case Linux
            echo "nohup xdg-open"
        case Darwin
            echo "open"
    end
end

function web-search -d "Search on the web"
    _web_search_load_custom_engines

    set -l url (_web_search_get_url $argv)
    if test $status -eq 1
        echo "'$argv[1]' is not supported."
        return 1
    end

    set -l open_cmd (_web_search_get_open_cmd)
    eval "$open_cmd '$url' &> /dev/null & disown"
end
