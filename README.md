This repo is the result of some experiments with running a Dockerised Ruby app using Nginx for load balancing and Consul for updating the configuration.

### Dependencies
* [Fig](http://fig.sh)
* [Docker](http://docker.io)
* [Locust](http://locust.io) - used to create some basic load on the running application

### Running
* fig up
* locust --host=http://localhost:3000

