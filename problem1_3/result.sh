## 1.2
diff -r a b -q
or 
diff -r a b -q | awk -F ' ' '/and/ {print $(NF-1)}' | awk -F '/' '{print $(NF)}'

## 2.2 
ps -ef | grep train.py | grep -v 'grep' | awk '{print $2}' | xargs kill -9


## 2.4
## to lower case
cat a.txt | awk '{print tolower($0)}'
tr -s '[:blank:]' '\n' < text.txt | fgrep -vwf stop.txt 

## 3.2
scp /home/user1/data.tar.gz userB@2.2.2.2:/home/userB/dataB.tar.gz

