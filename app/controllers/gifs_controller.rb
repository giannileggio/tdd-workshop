class GifsController < ApplicationController

  def index
    if params[:q].present?
      render json: {}
    else
      render json: {}, status: 400
    end
  end
end