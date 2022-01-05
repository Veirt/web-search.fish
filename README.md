# web-search.fish

A plugin to do a web search via fish.
Inspired by [oh-my-zsh/web-search](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search)

## Requirement

- [xdg-utils](https://github.com/freedesktop/xdg-utils)

## Installation

Install with [Fisher](https://github.com/jorgebucaran/fisher):

```sh
fisher install veirt/web-search.fish
```

## Usage

```sh
web-search google nyahello, world
```

You can also define aliases in your fish config:

```fish
alias google="web-search google"
alias stackoverflow="web-search stackoverflow"
alias github="web-search github"
```

And now, you can also do it like this:

```sh
google nyahello, world
```

Available search contexts:

| Context         | URL                                      |
| --------------- | ---------------------------------------- |
| `google`        | `https://www.google.com/search?q=`       |
| `bing`          | `https://www.bing.com/search?q=`         |
| `yahoo`         | `https://search.yahoo.com/search?p=`     |
| `duckduckgo`    | `https://www.duckduckgo.com/?q=`         |
| `startpage`     | `https://www.startpage.com/do/search?q=` |
| `yandex`        | `https://yandex.ru/yandsearch?text=`     |
| `github`        | `https://github.com/search?q=`           |
| `baidu`         | `https://www.baidu.com/s?wd=`            |
| `ecosia`        | `https://www.ecosia.org/search?q=`       |
| `goodreads`     | `https://www.goodreads.com/search?q=`    |
| `qwant`         | `https://www.qwant.com/?q=`              |
| `givero`        | `https://www.givero.com/search?q=`       |
| `stackoverflow` | `https://stackoverflow.com/search?q=`    |
| `wolframalpha`  | `https://wolframalpha.com/input?i=`      |
| `archive`       | `https://web.archive.org/web/*/`         |
| `scholar`       | `https://scholar.google.com/scholar?q=`  |

## Credits

- [oh-my-zsh/web-search](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search). Licensed under [MIT](https://choosealicense.com/licenses/mit/)

## FAQ

> Why is it not opening my browser of choice?

Run this command in your shell. For example, if you want to change it to Firefox:

```sh
xdg-settings set default-url-scheme-handler http firefox.desktop
```

You can replace `firefox.desktop` with whatever the name of your browser desktop entry.

## License

[ GNU GPLv3 ](https://choosealicense.com/licenses/gpl-3.0/)
