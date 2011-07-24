class PagesController < ApplicationController
  def home
    @title = "mPortal"
  end

  def food_outlets
    @title = "Mugs & Grubs"
  end
  
  def outlets
    @title = "Outlet"
  end
  
  def canteens
    @title = "Canteen"
  end

end