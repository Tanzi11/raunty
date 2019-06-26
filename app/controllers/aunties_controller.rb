class AuntiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @aunties = Aunty.all
  end

  def show
    @aunty = Aunty.find(params[:id])
    respond_to do |format|
      format.html
      format.json {render json: @aunty}
    end
  end
end
