function _web_search_get_open_cmd
    switch (uname)
        case Linux
            echo "nohup xdg-open"
        case Darwin
            echo "open"
    end
end
