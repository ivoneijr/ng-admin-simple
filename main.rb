require 'rubygems' if RUBY_VERSION < "1.9"
require 'sinatra'

class Main < Sinatra::Base

  set :public_folder, File.dirname(__FILE__) + '/public'
  set :static_cache_control, [:public, :must_revalidate, :max_age => 3600]

	get '/1' do
    send_file 'resources1.html'
  end

  get '/2' do
    send_file 'resources2.html'
  end

  get '/3' do
    send_file 'resources3.html'
  end

  get '/4' do
    send_file 'resources4.html'
  end

  # get '/*' do
  #   send_file 'resources.html'
  # end

end
