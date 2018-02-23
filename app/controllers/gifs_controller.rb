class GifsController < ApplicationController
  def index
    if params[:q]
      gifs = GiphyClient.new.search(params[:q])
      render json: {}
    else
      render json: {}, status: 404
    end
  end
end