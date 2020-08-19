# Docker instructions

(mostly todo)

The parameters are all pulled in from an `.Renviron` file. First create this file by copying the `.Renviron.sample` file and updating the parameters as needed.

## Build the docker container:

Here we name (tag) the container as `iehr`.

```
docker build --rm -t iehr
```

## Generate the full report:

Adding `net=host` allows the container to talk to services running on the host machine.

```
docker run \
  --rm \
  --net=host \
  -v "$(pwd)"/output:/app/output \
  iehr \
  R -f packageScript.R
```

This should create an output report in the `output` directory.

## Run the Shiny app:

```
docker run
  --rm \
  -p 3838:3838 \
  --net=host \
  <image name>
```

