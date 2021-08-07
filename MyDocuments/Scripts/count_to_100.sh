## sleep in bash for loop ##
for i in {1..100}
do
  if [ $i -lt 11 ]
  then
    echo I have counted to $i
  else 
    echo You should have used Ctrl+C to end the script by now! I have counted to $i! 
  fi
  sleep 0.2s
done
