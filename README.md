# Rails::Docker

New to Docker? Want to run your entire app self-contained in Docker during
development? (No need to install Postgres on your development machine).

Sick of `Dockerfile`, `.docker-ignore`, & `docker-compose.yml` copy pasta into
each of your projects? `Rails::Docker` to the rescue!

To begin with, `Rails::Docker` is fairly opinionated. Postgres is the only
supported database.

## Installation

Add this line to your Rails (`>= 3.0`) application's Gemfile:

```ruby
gem 'rails-docker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-docker

## Prerequisites

[Install docker](https://www.docker.com/products/overview)

## Usage

- `rails g docker:dockerfile` generates a relatively standard Dockerfile
for running your rails projects into the root of your project.

- `rails g docker:dockercompose` generates a Docker-based development
environment, ready to rock with Postgres as your database.

To run your app in your newly-created Docker-based development environment,
issue a `docker-compose up` from the root of your project.

To execute a bash shell inside your container, issue a `docker-compose run web bash`
from the root of your project.

To run a command inside your container (like running migrations or specs), issue
a `docker compose run web rake db:migrate`

### Database Configuration
Docker Compose links containers by default and sets the host name to the name of
the service set in docker compose. By default, your Postgres database host will
be `postgres`. I suggest using the `Postgres` user & a blank password in your
`database.yml`.

By default, port 3000 is exposed to your Docker host for serving your app. Port
5432 of Postgres is mapped to 5433 on your host to avoid any port collisions
if you already have Postgres running on the host.

## The Future

- [ ] - Support additional container types for Docker Compose (MYSQL, MariaDB, Redis)
- [ ] - Add Docker Swarm support
- [ ] - Set the development database configuration via generator

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rails-docker. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
