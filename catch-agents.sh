echo '=============================='>> log.text
cat content.txt | egrep -o "<FIELD NAME=\"contentid\">\d*</FIELD>" >> log.text
