require 'pry'
class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :'/songs/index'
  end

  get '/songs/new' do
    @artists = Artist.all
    erb :'/songs/new'
  end

  post '/songs' do

    binding.pry

    @song = Song.create(params["song"])

    # if !params["artist"]["name"].empty?
    #   @song.artist = Artist.create(name: params["artist"]["name"])
    # end
    #
    # @song.save

    redirect "songs/#{@song.slug}"

  end

  get '/songs/:slug' do

    @song = Song.find_by_slug(params[:slug])
    erb :'/songs/show'
  end


end
