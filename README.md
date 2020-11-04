# SOME TITLE

## Ruby version:
`2.6.5`

## Extra dependencies added to the project
```
gem 'active_model_serializers' -- scopes: root
gem 'rswag'

gem 'pry-byebug' -- scopes: development and test
gem 'rspec-its' -- scopes: development and test
gem 'rspec-rails' -- scopes: development and test
gem 'rubocop', '0.80.1', require: false -- scopes: development and test
gem 'rubocop-performance', require: false -- scopes: development and test
gem 'rubocop-rails', require: false -- scopes: development and test
gem 'factory_bot_rails' -- scopes: development and test
gem 'shoulda-matchers' -- scopes: development and test

gem 'faker' -- scopes: development and test
gem 'database_cleaner-active_record' -- scopes: test
```

## Installing the application

### Locally

#### Installing the resources

- Database creation and initialization

```
rails db:setup
```

#### Initializing the application

```
rails s -p 3000 -b '0.0.0.0'
```

### Docker

```
docker-compose up
```

#### Note

Database setup, migrations and seed have been configured on the `docker-entrypoint.sh` file.

## Accessing the endpoints

### Base URL

`localhost:3000/api/v1`

### Resources - [Direct link](http://localhost:3000/api-docs)

```
swagger/v1/swagger.yaml
```

or 

## Running the test suite

```
bundle exec rspec
```

## Extra configuration files

- Rspec: under `spec/*`
- Shoulda Matchers: under `spec/spec_helper.rb`
- DatabaseCleaner: under `spec/spec_helper.rb`
- FactoryBot: under `spec/spec_helper.rb`
- Validation Support: under `spec/support/validation_support.rb`


## Notes

- Minitest has been replaced by Rspec as test suite. The Rspec structure has been initialized with:
```
rails g rspec:install
```
