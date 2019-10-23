# README

Created with the following command

```
$ rails new dott -T -d postgresql
```

# Database

```
$ bin/rake db:create RAILS_ENV=development
```

# RSpec

Using RSpec so add gem to Gemfile and run bundle install. Then
```
$ rails generate rspec:install
```

# Model Spec

Add model spec for Message (model not yet created)
```
$ bin/rails g rspec:model message
```
