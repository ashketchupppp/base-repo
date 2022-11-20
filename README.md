# base-repo

This is a template repo which implements a basic CI/CD pipeline for building and deploying a service to a Kubernetes cluster.

There are two jobs:
 - `commit-test-build.yml` runs on every commit, uses the build and test scripts in `/scripts` to build and test your code 
 - `deliver-and-deploy.yml` runs on every push to main, uses the scripts in `/scripts` to build and test the code, build a docker container, push the container to Dockerhub and deploy the Kubernetes deployment configuration to your Kubernetes cluster

To use this repo, you should make a new one and list this one as a template.

Once you have your new repo, there are a few things to do:
 - change `IMAGE_NAME` in `deliver-and-deploy.yml` to the image name you'd like to push to
 - you need to add some secrets to your repo: `KUBECONFIG` a base64 encoded kubeconfig file, `DOCKER_USERNAME` and `DOCKER_TOKEN` from your Dockerhub account
 - The files in `/scripts` and `/src` can be changed to whatever you like

If you have any Kubernetes secrets you want your deployment to use, you will need to set these up on your cluster seprarately

Note: The `VERSION` file stores the current version of the repo. It does not follow SemVer, it is just a number that is incremented at the end of the build. It could be better but it works for now. 