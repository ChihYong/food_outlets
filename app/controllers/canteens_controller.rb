class CanteensController < ApplicationController
  
  before_filter :authorize, :except => [:show]
  # GET /canteens
  # GET /canteens.xml
  def index
    @canteens = Canteen.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @canteens }
    end
  end

  # GET /canteens/1
  # GET /canteens/1.xml
  def show
    @canteen = Canteen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @canteen }
    end
  end

  # GET /canteens/new
  # GET /canteens/new.xml
  def new
    @canteen = Canteen.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @canteen }
    end
  end

  # GET /canteens/1/edit
  def edit
    @canteen = Canteen.find(params[:id])
  end

  # POST /canteens
  # POST /canteens.xml
  def create
    @canteen = Canteen.new(params[:canteen])

    respond_to do |format|
      if @canteen.save
        format.html { redirect_to(@canteen, :notice => 'Canteen was successfully created.') }
        format.xml  { render :xml => @canteen, :status => :created, :location => @canteen }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @canteen.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /canteens/1
  # PUT /canteens/1.xml
  def update
    @canteen = Canteen.find(params[:id])

    respond_to do |format|
      if @canteen.update_attributes(params[:canteen])
        format.html { redirect_to(@canteen, :notice => 'Canteen was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @canteen.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /canteens/1
  # DELETE /canteens/1.xml
  def destroy
    @canteen = Canteen.find(params[:id])
    @canteen.destroy

    respond_to do |format|
      format.html { redirect_to(canteens_url) }
      format.xml  { head :ok }
    end
  end
end
