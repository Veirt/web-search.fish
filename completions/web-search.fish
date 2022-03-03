set -l contexts google bing yahoo duckduckgo startpage yandex github baidu ecosia goodreads qwant givero stackoverflow wolframalpha archive scholar nixpkgs nixoptions

for context in $contexts
    complete -c web-search -f -n __fish_use_subcommand -a $context
end
