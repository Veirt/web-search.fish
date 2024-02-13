# loading custom engines won't work here. conf.d/*.fish is sourced before the config.fish
set -g _web_search_fish_engines \
    google 'https://www.google.com/search?q=' \
    youtube "https://www.youtube.com/results?search_query=" \
    bing "https://www.bing.com/search?q=" \
    yahoo "https://search.yahoo.com/search?p=" \
    duckduckgo "https://www.duckduckgo.com/?q=" \
    startpage "https://www.startpage.com/do/search?q=" \
    yandex "https://yandex.ru/yandsearch?text=" \
    github "https://github.com/search?q=" \
    baidu "https://www.baidu.com/s?wd=" \
    ecosia "https://www.ecosia.org/search?q=" \
    goodreads "https://www.goodreads.com/search?q=" \
    qwant "https://www.qwant.com/?q=" \
    givero "https://www.givero.com/search?q=" \
    stackoverflow "https://stackoverflow.com/search?q=" \
    wolframalpha "https://www.wolframalpha.com/input/?i=" \
    archive "https://web.archive.org/web/*/" \
    scholar "https://scholar.google.com/scholar?q=" \
    nixpkgs "https://search.nixos.org/packages?query=" \
    nixoptions "https://search.nixos.org/options?query=" \
    aur "https://aur.archlinux.org/packages?K=" \
    gpo "https://gpo.zugaina.org/Search?search=" \
    searx "https://searx.org/search?q=" \
    brave "https://search.brave.com/search?q=" \
    urbandict "https://www.urbandictionary.com/define.php?term="


# the variable that prevent custom engines being loaded multiple times
set -g _web_search_fish_custom_loaded 0
