#
# the bootstrap process
# loads up everything needed for the app to run
#
require 'rubygems'
require 'bundler'

Bundler.setup
Bundler.require(:default, ENV['RACK_ENV'].to_sym) unless ENV['RACK_ENV'].nil?

require 'sinatra'

# --- begin system gems not in Gemfile ---
require 'logger'
# --- end system gems ---

autoload_paths = %w(/lib)

autoload_paths.each do |path|
  file_path = File.join(File.dirname(__FILE__), "..", path)
  $LOAD_PATH.unshift(file_path)
  Dir["#{file_path}/**/*.rb"].each do |file|
    basename = File.basename(file, ".rb")
    require file
  end
end

SINATRA_ROOT = File.join(File.dirname(__FILE__), '..')

[
  '/config/environment',
  # add any more manually loaded files here
].each do |f|
  require File.join(SINATRA_ROOT, f)
end

require File.join(SINATRA_ROOT, 'application')

