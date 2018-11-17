#!/bin/bash

: ' 

仕様
    ファイルを引数とする
    ファイルを読み込んで枚数の多い順に表示する
    デフォルトは10行までの表示
    引数2によって表示行数を変更できる

#   枚数    アーティスト名
    5       Depeche Mode
    2       Split Enz
    3       Simple Minds
    1       Vivaldi, Antonio
    ...
'
set -eu

# デフォルト値の入力
line_count=10

function checkArgument(){

# echo "Argument count is $#"

if [[ $# -eq 1 ]]; then 
    cd_list=$1
elif [[ $# -eq 2 ]]; then
    cd_list=$1
    line_count=$2
elif [[ $# -gt 3 ]]; then
    echo "引数は2つまでです。"
    exit 1
else
    echo "ERROR:　引数を入力してください。"
    echo "引数1: ファイル名"
    echo "引数2: 出力行数"
    exit 1
fi

}

function makeSortInputFile(){
    SortedFile=$(cat "${cd_list}" | sort -nr)
}

function outputSortedFile(){
    echo -e "$SortedFile" | head -${line_count}
}


# $* -> 引数を全て展開する
checkArgument $*
makeSortInputFile
outputSortedFile
