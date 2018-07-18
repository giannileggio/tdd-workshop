class GifsController < ApplicationController
  def index
    if params[:q].present?
      gifs = GiphyClient.new.search(params[:q])
      render json: gifs
    else
      render json: {}, status: 400
    end
  end

  def show
    render json: {}
  end
end