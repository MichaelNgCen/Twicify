class Api::ArtistsController < ApplicationController
    def show
      @albums = Album.where(genre: params[:genre])
      render :show
    end
  end
  