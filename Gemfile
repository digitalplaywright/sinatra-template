source :rubygems

gem 'sinatra'
gem 'rake', '0.8.7'
gem 'unicorn'

# support
gem 'resque'

# cache
gem 'memcached' # https://github.com/fauna/memcached
gem 'redis'

# database stuff (pick one)
gem 'sequel'
# gem 'data_mapper'
# gem 'activerecord'

group :development, :test do
  gem 'ruby-debug19'
  gem 'foreman'
  gem 'shotgun'
  gem 'racksh'
  gem 'tux'
end

group :test do
  gem 'rspec'
  gem 'rack-test'
  gem 'autotest'
  gem 'fakeweb'
end
