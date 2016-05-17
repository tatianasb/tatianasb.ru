echo 'Removing Icon? files'
find . -iname 'Icon*' -exec rm {} \;
echo 'Removing .DS_Store files'
find . -iname '.DS_Store' -exec rm {} \;
