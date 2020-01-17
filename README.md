# hello-world
hello world in a container

- oc new-app . -o yaml > hello.yaml
- delete DeploymentConfig from hello.yaml
- oc create -f hello.yaml
- oc create -f job.yaml
