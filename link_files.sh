FILES=$(ls -A)
PWD=$(pwd)
IGNORE="README.md link_files.sh .git"

for file in ${FILES}
do
    if [ `echo ${IGNORE} | grep -c ${file}` -eq 0 ];
    then
        echo "Removing ~/${file}"
        rm -rf ~/${file}
        echo "Creating link to ~/${PWD}/${file} in its place"
        ln -s ${PWD}/${file} ~/${file}
    else
        echo "Ignoring ${file}"
    fi
done
