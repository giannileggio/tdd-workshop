class GifsController < ApplicationController
  def index
    if params[:query].empty?
      render json: { error: 'query must be defined' }, status: 400
    else
      gifs = GiphyClient.new.search(params[:query])
      render json: gifs
    end
  end
end
