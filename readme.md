# Jupyter Lab Server Image
This is a docker file for building a jupyter lab container
## Port
* 8000: jupyter webservice
* 3500: jupyter token (http://[ip]:3500/server)
## Build image by yourself
1. clone the repo
2. run `docker build -t JupyterLab .`
## run container
`docker -p 8000:8000 -p 3500:3500 -v /[dataFolder]:/data -d JupyterLab`
## Pull image from docker hub
`docker pull hanyuufurude/jupyterlab`
## Pull image from ali cloud
`docker pull docker pull registry.cn-hangzhou.aliyuncs.com/hanyuulu/jupyterlab`
