class OutletsController < ApplicationController
  # GET /outlets
  # GET /outlets.xml
  def index
    @outlets = Outlet.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @outlets }
    end
  end

  # GET /outlets/1
  # GET /outlets/1.xml
  def show
    @outlet = Outlet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @outlet }
    end
  end

  # GET /outlets/new
  # GET /outlets/new.xml
  def new
    @outlet = Outlet.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @outlet }
    end
  end

  # GET /outlets/1/edit
  def edit
    @outlet = Outlet.find(params[:id])
  end

  # POST /outlets
  # POST /outlets.xml
  def create
    @outlet = Outlet.new(params[:outlet])

    respond_to do |format|
      if @outlet.save
        format.html { redirect_to(@outlet, :notice => 'Outlet was successfully created.') }
        format.xml  { render :xml => @outlet, :status => :created, :location => @outlet }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @outlet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /outlets/1
  # PUT /outlets/1.xml
  def update
    @outlet = Outlet.find(params[:id])

    respond_to do |format|
      if @outlet.update_attributes(params[:outlet])
        format.html { redirect_to(@outlet, :notice => 'Outlet was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @outlet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /outlets/1
  # DELETE /outlets/1.xml
  def destroy
    @outlet = Outlet.find(params[:id])
    @outlet.destroy

    respond_to do |format|
      format.html { redirect_to(outlets_url) }
      format.xml  { head :ok }
    end
  end
end
