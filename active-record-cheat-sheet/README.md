# Active Record Cheatsheet

This aims to be a quick reference for [Active Record](http://guides.rubyonrails.org/active_record_querying.html) as well as related [rake](https://github.com/jimweirich/rake) & database tasks.

## Contents

* [Installation](#installation)
* [Connecting to a database](#connecting-to-a-database)



## Installation

Add it to your Gemfile:

```ruby
gem 'activerecord'
```

In terminal/cmd, navigate to your project directory and run this command:

```
bundle install
```

Then `require` it:

```ruby
require 'active_record'
```


## Connecting to a database

```ruby
ActiveRecord::Base.establish_connection(YAML::load(File.open('./db/config.yml'))["db_name"])
```

### Clearing the test database between specs

```ruby
RSpec.configure do |config|
  config.after(:each) do
    Task.all.each { |task| task.destroy }
  end
end
```
