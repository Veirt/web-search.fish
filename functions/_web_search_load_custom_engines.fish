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
