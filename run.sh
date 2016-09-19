#/bin/bash
docker run -it -p 3000:3000 -p 5959:5959 -v $PWD:/app simple-todos:v1.0.0 bash
