class AdvicesController < ApplicationController
  def show
    @advice = Advice.find(params[:id])
  end
  def update
    @advice= Advice.find(params[:id])
    if @advice.update(advice_params)
      redirect_to rants_path
    else
      render :edit
    end
  end

 private
  def advice_params
    params.require(:advice).permit(:feedback,:helpful)
  end
end
