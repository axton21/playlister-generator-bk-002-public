require_relative '../config/environment'

class Playlister < Sinatra::Base
  set :views, File.join(File.dirname(__FILE__), "../views")

  get '/' do
    erb :index
  end

  get '/artists' do
    @artists = Artist.all
    erb :artists
  end

  get '/songs' do
    @songs = Song.all
    erb :songs
  end

  get '/genres' do
    @genres = Genre.all
    erb :genres
  end
end
