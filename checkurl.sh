#!/bin/bash
code=$(curl -Is -o /dev/null -w "%{http_code}\n" --connect-timeout 5  'http://localhost:80/')

echo "response code:$code"
if [ "$code" == "200" ] ;
then
  echo "success"
  exit 0;
else
  echo "error"
  exit 1;
fi
