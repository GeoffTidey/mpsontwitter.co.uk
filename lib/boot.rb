require 'sinatra'

$APPLICATION_ROOT = File.join(File.dirname(__FILE__), *%w[..])
$TWFY_API_KEY = ENV['TWFY_API_KEY']

set :public, File.join($APPLICATION_ROOT, 'public')
set :views,  File.join($APPLICATION_ROOT, 'templates')

require 'routes'
require 'mp_lookup'
require 'twitter_status_checker'
