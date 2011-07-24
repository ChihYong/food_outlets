class PagesController < ApplicationController
  def home
    @title = "mPortal"
  end

  def food_outlets
    @title = "Mugs & Grubs"
  end

end
