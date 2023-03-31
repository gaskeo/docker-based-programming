#!/bin/bash

docker_files_raw=$(find . -name "Dockerfile*")
docker_files=($docker_files_raw)

mkdir -p '.compiled'
cp "Dockerfile" ".compiled/Dockerfile.compiled"

echo "- copy" $'\e[1;32m'Dockerfile$'\e[0m' "to" $'\e[1;32m'.compiled./Dockerfile.compiled$'\e[0m'

has_include_lines=1
check_count=0

while [ "$has_include_lines" = 1 ]
do
    let "check_count++"
    echo -e "\n- start checking Dockerfile.compiled file" $'\e[1;32mN'"$check_count"$'\e[0m'
    file_tmp=$(cat ".compiled/Dockerfile.compiled")

    include_lines_raw=$(echo "$file_tmp" | grep "^# INCLUDE*")
    readarray -t include_lines <<<"$include_lines_raw"

    if [ "$include_lines_raw" = "" ];
        then
            echo -e "\n\n-=- compile finished in $check_count iterations -=-"
            has_include_lines=0
            break
    fi

    echo "--- found" $'\e[1;32m'"${#include_lines[@]}"$'\e[0m' "INCLUDE direcives"

    for include_line in "${include_lines[@]}"
    do
        file_name=$(echo "$include_line" | sed 's/# INCLUDE //g' | sed 's/\r//g')
        file_content="$(<$file_name)"
        file_content="${file_content//\\/\\\\}"
        echo "--- touch $file_name"

        file_tmp=$(echo "$file_tmp" | awk -v include_line="$include_line" \
            -v file_content="$file_content" \
            '{ if($0 == include_line)  print file_content; else print $0}')
    done

    echo "$file_tmp" > .compiled/Dockerfile.compiled
    echo '- save tmp in .compiled/Dockerfile.compiled'
done
