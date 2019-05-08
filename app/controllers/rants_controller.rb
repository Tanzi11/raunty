class RantsController < ApplicationController
  def index
    @rants = Rant.all
  end

  def new
    @aunty = Aunty.find(params[:aunty_id])
    @rant = Rant.new
  end

  def create
    @aunty = Aunty.find(params[:aunty_id])
    @rant = current_user.rants.build(rant_params)
    if @rant.save
      binding.pry
      redirect rant_path(@rant)
    else
      render :new
  end
end

  def show
    @rant = Rant.find(params[:id])
  end
  private
  def rant_params
    params.require(:rant).permit(:content)
  end
end
