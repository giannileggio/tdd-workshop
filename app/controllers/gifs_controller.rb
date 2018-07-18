class GifsController < ApplicationController
  def index
    if params[:q].blank?
      render json: {}, status: 400
    else
      render json: {}, status: 200
    end
  end
end
