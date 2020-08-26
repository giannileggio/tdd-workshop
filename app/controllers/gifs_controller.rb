class GifsController < ApplicationController
  def index
    if params[:query].empty?
      render json: {}, status: 400
    else
      render json: {}
    end
  end
end
