class PagesController < ApplicationController
  def home
    @title = "mPortal"
  end

  def food_outlets
    @title = "Mugs & Grubs"
    @outlets = Outlet.all(:order => 'name')
    @canteens = Canteen.all(:order => 'name')
  end

end