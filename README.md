# Rails boilerplate

* ruby 2.3.1
* node 5.5
* rails 4.2.6
* reactjs 15.0

##Config
1. bundle install && npm install
2. start the webpack clien npm start
3. start rails server rails s

*or use foreman start -f Procfile.dev

###Orm
mongoid 5
see http://mongoid.github.io/en/mongoid/docs/relations.html
###Framework css
boostrap 3
###Auth
devise
with omniauth facebook and google
user model it's created with auth methos and generate username method
###Storage
carrierwave-mongoid
###Test
rspec, factory_girl, shoulda-matchers, database_cleaner

factory girl for create objects in test suite
shoulda-matchers for simple test validations methods
database_cleaner for more easy test suite

###Frontend js
ReactJs

###Developer utils
use guard to run unit test, when you change the todos_controler.rb guard execute todos_controler_spec.rb it's great!!

rails_best_practices to help write clean code

better_errors for find error more quick

meta_request to know more info for request in rails, params, render view, ActiveRecord sql

##Contain
scaffold Todo full unit test
landing boostrap
