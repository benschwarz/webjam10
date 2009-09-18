require 'rubygems'
require 'sinatra'
require 'haml'

gem 'smoke', '>= 0.5.10'
require 'smoke'
require 'stream'

set :public, File.join(File.dirname(__FILE__), 'public')
set :haml, {:format => :html5, :attr_wrapper => '"'}
enable :static
mime :json, "application/json"

get '/' do
  haml :index
end

post '/stream' do
  content_type :json
  Smoke.stream.term(params[:tag]).output(:json)
end