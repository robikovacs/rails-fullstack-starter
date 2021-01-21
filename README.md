# Rails Fullstack Starter

----

## Documentation

This README describes the purpose of this repository and how to set up a development environment.

## Prerequisites

This project requires either Option 1:

* Latest [Docker][] engine installed
* [docker-compose] installed

or Option 2:

* Ruby 2.7.2, preferably managed using [rbenv][]
* PostgreSQL must be installed and accepting connections
* [Redis][] must be installed and running on localhost with the default port

If you need help setting up a Ruby development environment locally, check out this [Rails OS X Setup Guide](https://gorails.com/setup/).

## Getting started

### Option 1: With Docker

1. Run `docker-compose build`
2. Run `docker-compose run rails rake db:setup`
3. Run `docker-compose up`

### Option 2: Local setup

1. Run the `bin/setup` script.
2. Run `bin/rake` to run all tests and lint checks.
3. Run `yarn start`

Access the app at <http://localhost:3000/>.

## Deployment

Ensure the following environment variables are set in the deployment environment:

* `DATABASE_URL`
* `RACK_ENV`
* `RAILS_ENV`
* `REDIS_URL`
* `SECRET_KEY_BASE`

[rbenv]:https://github.com/sstephenson/rbenv
[redis]:http://redis.io
[Docker]:https://docs.docker.com/engine/install/
[docker-compose]:https://docs.docker.com/compose/install/
