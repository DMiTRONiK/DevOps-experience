#!/bin/bash
c=0
while ((c++ < 5 )); do
  code=$(curl -Is -o /dev/null -w "%{http_code}\n" --connect-timeout 5  http://$1:80/)
  echo "response code:$code"
  if [ "$code" == "200" ] ;
  then
    echo "success"
    STATUS=0
    break
  else
    echo "error"
    STATUS=1
    sleep 10
  fi
done
exit $STATUS
