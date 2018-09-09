# Print environment value from Docker scratch 

~~~~
docker build -t envdemo .
docker run --rm -e "DEMO=hello world!" envdemo 
~~~~