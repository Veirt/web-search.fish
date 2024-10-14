#!/usr/bin/env fish

set tmp_dir (mktemp -d)
set zip_file "$tmp_dir/web-search.zip"
set url "https://github.com/Veirt/web-search.fish/archive/refs/heads/main.zip"
set extract_dir "$tmp_dir/web-search.fish-main"

curl -L $url -o $zip_file

unzip $zip_file -d $tmp_dir

cp $extract_dir/completions/*.fish ~/.config/fish/completions/
cp $extract_dir/conf.d/*.fish ~/.config/fish/conf.d/
cp $extract_dir/functions/*.fish ~/.config/fish/functions/

rm -rf $zip_file $extract_dir

rm -rf $tmp_dir

echo "web-search.fish has been installed!"
