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
      advice = @aunty.advices.build(rant_id: @rant.id)
      # advice.feedback = @aunty.note.sample.message
      advice.feedback = "Reflect on your life choices, boo."
      advice.save
      redirect_to advice_path(advice)
    else
      render :new
  end
end

  def show
    @aunty = Aunty.find(params[:aunty_id])
    @rant = Rant.find(params[:id])
  end


  def edit
    @aunty = Aunty.find(params[:aunty_id])
    @rant = Rant.find(params[:id])
  end

  def update
    @aunty = Aunty.find(params[:aunty_id])
    @rant = Rant.find(params[:id])
    if @rant.update(rant_params)
      redirect_to advice_path(advice)
    else
      render 'edit'
    end
  end

  def destroy
    @rant.destroy
  end
  private
  def rant_params
    params.require(:rant).permit(:content)
  end
end
