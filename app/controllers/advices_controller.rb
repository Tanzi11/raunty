class AdvicesController < ApplicationController
  def show
    @advice = Advice.find(params[:id])
  end

  def edit
    @advice = Advice.find(params[:id])
  end

  def update
    @advice= Advice.find(params[:id])
    if @advice.update(advice_params)
      redirect_to edit_advice_path
    else
      render :show
    end
  end

 private
  def advice_params
    params.require(:advice).permit(:feedback,:helpful)
  end
end
