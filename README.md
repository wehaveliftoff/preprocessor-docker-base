# Preprocessor base image
The Lift Preprocessor base Docker image (https://hub.docker.com/r/wehaveliftoff/preprocessor-base/)

The Lift Preprocessor depends on a number of libraries that require a lot of time to build (e.g. scipy, numpy, etc.)
To decrease the automated build time we use this image, which has the heavier dependencies already installed,
as the Docker base image for the actual preprocessor image.

To build and push to the Docker Hub repository:

    docker build . -t wehaveliftoff/preprocessor-base
    docker push wehaveliftoff/preprocessor-base
   
Please note that we install specific library versions, so any version changes in the Preprocessor should be
applied here as well.
