FROM rocker/shiny-verse:3.6.3

### Install from source
COPY ./ /tmp/downloaded_packages/d.inspectEHR/
RUN R -e "devtools::install_local('/tmp/downloaded_packages/d.inspectEHR/', dependencies=TRUE)"

## Add output volume
VOLUME /app/output

###
COPY ./ /srv/shiny-server/inspectEHR/
#COPY ./.Renviron /srv/shiny-server/inspectEHR/
#COPY ./packageScript.R /srv/shiny-server/inspectEHR/
WORKDIR /srv/shiny-server/inspectEHR/

#CMD ["R"]
