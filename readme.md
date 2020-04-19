# Jupyter Lab Server Image
* This is a docker file for building a jupyter lab container
## PORT
* 8000: jupyter webservice
* 3500: jupyter token
## build by your self
* clone the repo
* run `docker build -t JupyterLab .`
### run container
* `docker -p 8000:8000 -p 3500:3500 -v /[dataFolder]:/data -d JupyterLab`