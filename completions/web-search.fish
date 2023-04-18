set -l contexts google youtube bing yahoo duckduckgo startpage yandex github baidu ecosia goodreads qwant givero stackoverflow wolframalpha archive scholar nixpkgs nixoptions aur gpo searx brave

for var in (env | grep ^WEB_SEARCH)
    set -l context (string split -m 1 = $var)[1]
    set -a contexts ( echo "$context" | string sub -s 12)
end

for context in $contexts
    complete -c web-search -f -n __fish_use_subcommand -a $context
end
