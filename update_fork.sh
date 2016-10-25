#!/bin/sh

if [ ! -x update_fork.sh ]; then
touch update_fork.sh
chmod 777 update_fork.sh
./update_fork.sh
exit 0
fi

git fetch emeuler
if [ $? -eq 0 ]; then
echo "git fetch emeuler done"
else
exit -1
fi

git merge script-utility/master
if [ $? -eq 0 ]; then
echo "git merge script-utility/master done"
else
exit -2
fi

git push origin master
if [ $? -eq 0 ]; then
echo "git push origin master done"
else
exit -3
fi
