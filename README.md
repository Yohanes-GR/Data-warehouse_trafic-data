## Overview of the Project
A city traffic department wants to collect traffic data using swarm UAVs (drones) from a number of locations in the city and use the data collected for improving traffic flow in the city and for a number of other undisclosed projects. Your startup is responsible for creating a scalable data warehouse that will host the vehicle trajectory data extracted by analyzing footage taken by swarm drones and static roadside cameras.
The aim of this project is to create a scalable data warehouse tech-stack.
Data used for this project can be found [here](https://open-traffic.epfl.ch/index.php/downloads/#1599047632450-ebe509c8-1330/)
## Workflow
## Running apache airflow 2.0 in docker with local executor.
Here are the steps to take to get airflow 2.0 running with docker on your machine.
1. Clone this repo
1. Create dags, logs and plugins folder inside the project directory
```bash
mkdir ./dags ./logs ./plugins
```
1. Install docker desktop application if you don't have docker running on your machine
- [Download Docker Desktop Application for Mac OS](https://hub.docker.com/editions/community/docker-ce-desktop-mac)
- [Download Docker Desktop Application for Windows](https://hub.docker.com/editions/community/docker-ce-desktop-windows)
1. Launch airflow by docker-compose
```bash
docker-compose up -d
```
1. Check the running containers
```bash
docker ps
```
1. Open browser and type http://0.0.0.0:8080 to launch the airflow webserver

![](images/screenshot_airflow_docker.png)

### Using the  project

Try running the following commands:
- dbt run
- dbt test

View data warehouse [documentation](https://toyin-sensors.netlify.app/#!/overview)



### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- See a step-by-step [guide](https://www.startdataengineering.com/post/dbt-data-build-tool-tutorial/) of creating a warehouse with dbt 
