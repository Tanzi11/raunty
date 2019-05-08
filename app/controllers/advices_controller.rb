class AdvicesController < ApplicationController
  def show
    @advice = Advice.find(params[:id])
  end
end
