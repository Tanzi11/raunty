class AuntiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @aunties = Aunty.all
  end
end
