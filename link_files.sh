FILES=$(ls -A)
PWD=$(pwd)
IGNORE="README.md link_files.sh .git"

for file in ${FILES}
do
    if [ `echo ${IGNORE} | grep -c ${file}` -eq 0 ];
    then
        rm -rf ~/${file}
        ln -s ${PWD}/${file} ~/${file}
    fi
done
