source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.0.2'

# Use mysql as the database for Active Record
#gem 'mysql2'
gem 'mysql2', '~> 0.3.18', group: :development# usado apenas no ambiente de desenvolvimento

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem 'therubyracer'

gem 'less-rails' #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS

gem 'twitter-bootstrap-rails'

gem 'kaminari' # Gem para paginação

gem 'will_paginate', '~> 3.0.6' #Gem para paginação

gem "paperclip", "~> 4.3" #Gem para upload de arquivos

gem 'rails_12factor', group: :production #Gem para comunicar com o servidor de aplicação heroku

gem 'pg', group: :production #Gem do postgresql pois o servidor heroku só usa o postgresql(somente para produção)

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

ruby '1.9.3'

#gem 'puma', group: :production
gem 'unicorn', group: :production


# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]