filePath="/usr/local/java/config/application.yml"

if [ ! -f "$filePath" ] || [ ! -r "$filePath" ] 
then
    echo "$filePath is not readable!"
elif [ ! -s "$filePath" ]
then
    echo "$filePath is empty!"
else
for line in `cat $filePath`
do
    echo "$line"
done
fi

