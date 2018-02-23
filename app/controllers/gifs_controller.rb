class GifsController < ApplicationController
  def index
    if params[:q]
      render json: {}
    else
      render json: {}, status: 404
    end
  end
end