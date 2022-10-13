# basic_ml_flask_docker_tutorial

This tutorial is how to run a very basic ML model prediction using flask web-framework and on docker container

Since this code is more about how to run the prediction code using docker container, I took an existing ML model code: https://github.com/hoshangk/machine_learning_model_using_flask_web_framework. This was done purposely to keep the modelling part abstracted out and treated the ML model as a blackbox provided by some other team.

I re-structured and edited some of the code for better understanding in the tutorial.
This repo is primarily a tutorial on how to packege an ML prediction web-app running on flask on a docker container.

## Lets focus on the files of interest here

1. open ```dockerfile``` : This is the script to build docker image
2. check ```requirements.txt``` This is where we tell what exact dependencies the image should have. The whole purpose of docker is to pass over dependencies like these in isolated container environnment so that it can be run on any machine without creating any conflicts on the destination system machines preinstalled dependencies or other applications and/or containers.
3. check ```.dockerignore``` : This is the file to put files/folders eg. log files to ignore while building docker image. In our case we want to skip the salary_dataset we used to create the model. Since we are already passing the model, and we are using the model directly in the web application ```app.py```, we can skip put the dataset which can make the image heavy.

## Build the image
```
docker build  --no-cache --tag ml-flask-docker-3 .
```

## Run the container
```
docker run -d -p 5000:5000 ml-flask-docker-3
```

## Check the container app running on web-browser

![Alt text](snippets/app.png)
