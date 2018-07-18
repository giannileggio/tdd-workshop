class GifsController < ApplicationController
  def index
    if params[:q].blank?
      render json: {}, status: 400
    else
      GiphyClient.new.search(params[:q])
      render json: {}, status: 200
    end
  end
end
