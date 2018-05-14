# Example Ruby on Rails TODO list app with Draft

This Ruby on Rails todo list app is here to serve as an example of how you can use [Draft](https://github.com/Azure/draft) to develop a Ruby on Rails app against a Kubernetes cluster with Draft.

* Ruby version: 2.5.0
* Rails version: 5.1.6

To get started:
1. Clone this repository
2. Install Draft via the instructions on the [quickstart guide](https://github.com/Azure/draft/blob/master/docs/quickstart.md)
2. Assuming you've already run `draft init` and either configured a image registry to work with Draft OR run `$ eval $(minikube docker-env)`, run `draft init` in the directory of the application:
```console
$ draft up
WARNING: no registry has been set, therefore Draft will not push to a container registry. This can be fixed by running `draft config set registry docker.io/myusername`
Hint: this warning can be disabled by running `draft config set disable-push-warning 1`
Draft Up Started: 'todo-app': 01CDFSD7ZYPENG32W7Y0198NYR
todo-app: Building Docker Image: SUCCESS ⚓  (184.2766s)
todo-app: Releasing Application: SUCCESS ⚓  (2.3750s)
Inspect the logs with `draft logs 01CDFSD7ZYPENG32W7Y0198NYR`
```

Then, type: `$ draft connect` and copy/paste the localhost url in your browser` to see your rails application running

```console
$ draft connect
Connect to ruby:3000 on localhost:3000
```

Draft packs are magical. You can use them to package up your Dockerfile, Helm chart(s), documentation, and any organization specific scripts or conventions. You can read more about them [here](https://github.com/Azure/draft/blob/master/docs/reference/dep-003.md)

If you have your own rails app, try this:
```console
$ draft pack-repo add https://github.com/michelleN/draft-packs
Installing pack repo from https://github.com/michelleN/draft-packs
Installed pack repository github.com/michelleN/draft-packs

$ draft create --pack rails # get the same draft scaffolding found in this repo (Dockerfile, Helm chart, etc.)
--> Ready to sail

$ draft up --auto-connect # builds image, deploys app to Kubernetes, creates local tunnel for you to connect to your app
```
