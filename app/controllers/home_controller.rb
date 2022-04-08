class HomeController < ApplicationController
  def index
    @beers = Beer.all
    @beers = @beers.page(params[:page]).per(15)
  end

  def about; end
end
