# build site
FROM python:3.7-slim as dbt_site_builder

# here add the environment variables you need and will pass via --build-arg 
ARG profile_path=/home/.dbt/profiles.yml 

# install dbt
# ENV DBT_VERSION=0.14.2
RUN apt-get update -y && \
    apt-get install --no-install-recommends -y -q \
    git libpq-dev python-dev && \
    pip install dbt-mysql

# Set environment variables and working directory
ENV DBT_DIR /source
WORKDIR $DBT_DIR
ENV DBT_PROFILES_DIR $DBT_DIR
COPY . .

# pull dbt dependencies
RUN dbt deps    

# build static pages
RUN dbt docs generate --target dev

# serve site
FROM nginx:stable-alpine

# here copy any nginx related files you might need for your deployment, for example nginx.conf
# ADD ...

COPY --from=dbt_site_builder /source/target/index.html /source/target/manifest.json /source/target/catalog.json /source/target/run_results.json /usr/share/nginx/html/

EXPOSE 8087
