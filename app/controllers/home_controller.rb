class HomeController < ApplicationController
  def index
    @beers = Beer.all
  end

  def about; end
end
