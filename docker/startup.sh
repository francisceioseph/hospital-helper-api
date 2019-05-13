#! /bin/sh

echo "EXECUTING POST INSTALL OPERATIONS"
echo "PLEASE, WAIT..."

rails db:drop db:create db:migrate db:germinate

# remove existing server.pid
if [ -f ./tmp/pids/server.pid ]; then
  echo "Server.pid found, removing it!"
  rm ./tmp/pids/server.pid
fi