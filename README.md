# Example TODO list app

This example Ruby on Rails todo list app is here to serve as an example of how you can use [Draft](https://github.com/Azure/draft) to develop a Ruby on Rails app against a Kubernetes cluster with Draft.

* Ruby version: 2.5.0
* Rails version: 5.1.6

To get started:
1. Clone this repository
2. Install Draft via the instructions on the [quickstart guide](https://github.com/Azure/draft/blob/master/docs/quickstart.md)
2. In the directory of the application, run `$ draft up`
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


