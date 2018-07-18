class GifsController < ApplicationController
  def index
    if params[:q].blank?
      render json: {}, status: 400
    else
      gifs = GiphyClient.new.search(params[:q])
      render json: gifs, status: 200
    end
  end
end
