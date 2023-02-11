THIS_DIR=''
pushd "$(dirname "$(readlink -f "$BASH_SOURCE")")" > /dev/null && {
    THIS_DIR="$PWD"
    popd > /dev/null 
}

kalendar > /dev/null &
xdg-open https://habitica.com/ > /dev/null &
$THIS_DIR/open_msgs.sh > /dev/null &
$THIS_DIR/open_news.sh > /dev/null &
notion-app > /dev/null &

jobs -l
disown -h -a
