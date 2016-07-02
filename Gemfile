source 'https://rubygems.org'
ruby "2.3.1"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

#orm mongoid see http://mongoid.github.io/en/mongoid/docs/relations.html
gem 'mongoid', git: 'https://github.com/mongodb/mongoid.git'
gem 'bson_ext'
# gem "mongoid-enum"
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# frontend
gem 'bootstrap-sass', '~> 3.3.6'
gem "font-awesome-rails"
gem "react_on_rails", "~> 5"

#utils
gem 'time_diff'

#services

#Authentication
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'
gem "omniauth-google-oauth2"
gem 'oauth2'

#storage
gem 'carrierwave-mongoid', :require => 'carrierwave/mongoid'

#securely configure
gem 'figaro'


group :development, :test do
  gem 'pry-rails'
  gem 'byebug'

  gem 'faker'
  gem 'factory_girl_rails'

  #keep calm and develop great app
  #bundle exec guard
  gem 'guard-livereload', require: false
  gem 'guard-rspec', require: false
  gem 'guard-rails_best_practices', git: 'https://github.com/logankoester/guard-rails_best_practices.git'

  #develoment utils
  gem "better_errors"
  gem 'meta_request' # download the crhome extension https://chrome.google.com/webstore/detail/railspanel/gjpfobpafnhjhbajcjgccbbdofdckggg
  gem "rails_best_practices"
  gem 'overcommit'   # overcommit --install && overcommit --sign
end

group :test do
  gem 'rspec-rails'
  gem 'nyan-cat-formatter' # I like this ^_^
  gem "spring-commands-rspec"
  gem 'database_cleaner'
  gem 'shoulda-matchers', '~> 3.1'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
