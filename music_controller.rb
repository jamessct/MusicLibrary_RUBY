require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/artist')

#New
get('/artists/new') do
  erb(:new_artist)
end

#Create
post('/artists') do
  @artists = Artist.new(params)
  @artists.save
  erb(:create_artist)
end

#Index
get('/artists') do
  @artists = Artist.all
  erb(:index_artist)
end

#Show
get('/artists/:id') do
  @artists = Artist.find(params[:id])
  erb(:show_artist)
end


#New
get('/albums/new') do
  erb(:new_album)
end

#Create
post('/albums') do
  @albums = Album.new(params)
  @albums.save
  erb(:create_album)
end

#Index
get('/albums') do
  @albums = Album.all
  erb(:index_album)
end

#Show
get('/albums/:id') do
  @albums = Album.find(params[:id])
  erb(:show_album)
end