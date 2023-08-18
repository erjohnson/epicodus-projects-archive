# Yarn

This project is for the [Ruby on Rails Basics assessment](http://www.learnhowtoprogram.com/lessons/rails-basics-assessment) at [Epicodus](http://www.epicodus.com/).

**Yarn** is a user story management app.  A user can create projects and give each project a set of stories.

[View Demo](http://yarn-app.herokuapp.com/)

In software development a [user story](http://en.wikipedia.org/wiki/User_story) is one or more sentences in the everyday language of the end user that captures what a user does, needs, or wants to do within the context of an application. User stories provide a description or use-case for functions an application should provide.

An example user story:

>As a store-owner, I want to search for my customers by their first and last names.


## Installation

Ensure that you have the latest stable versions of [Ruby](https://www.ruby-lang.org/en/), [Ruby on Rails](http://rubyonrails.org/), [Bundler](http://bundler.io/) and [PostgreSQL](http://www.postgresql.org/) installed.

Download the zip of this repository or clone it via git by executing this command in your terminal:

```
git clone https://github.com/erjohnson/yarn.git
```

Navigate to the **Yarn** project directory in your terminal:

```
cd $SOME_PATH/yarn
```

Next run `bundle install --without production` to download the appropriate dependencies.

Then execute `rake db:create` to create the database and `rake db:schema:load` to set up the tables.

Start up the app by running `rails server` and visiting `http://localhost:3000/` in your web browser.


## Dependencies

* [Ruby](https://www.ruby-lang.org/en/)
* [Ruby on Rails](http://rubyonrails.org/)
* [PostgreSQL](http://www.postgresql.org/)
* [Bundler](http://bundler.io/)
* [PG](http://deveiate.org/code/pg/)
* [Better Errors](https://github.com/charliesome/better_errors)
* [Bootstrap](http://getbootstrap.com/)
* [RSpec](http://rspec.info/)
* [Shoulda-Matchers](https://github.com/thoughtbot/shoulda-matchers)
* [Rails 12factor](https://github.com/heroku/rails_12factor)


## Author

[Eric Johnson](https://github.com/erjohnson)


## License

[MIT](http://opensource.org/licenses/MIT)

*Copyright (c) 2014*

*Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:*

*The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.*

*THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.*
