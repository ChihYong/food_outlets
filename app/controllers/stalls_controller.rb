class StallsController < ApplicationController
  
  before_filter :authorize, :except => [:show]
  # GET /stalls
  # GET /stalls.xml
  def index
    @stalls = Stall.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @stalls }
    end
  end

  # GET /stalls/1
  # GET /stalls/1.xml
  def show
    @stall = Stall.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @stall }
    end
  end

  # GET /stalls/new
  # GET /stalls/new.xml
  def new
    @stall = Stall.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @stall }
    end
  end

  # GET /stalls/1/edit
  def edit
    @stall = Stall.find(params[:id])
  end

  # POST /stalls
  # POST /stalls.xml
  def create
    @stall = Stall.new(params[:stall])

    respond_to do |format|
      if @stall.save
        format.html { redirect_to(@stall, :notice => 'Stall was successfully created.') }
        format.xml  { render :xml => @stall, :status => :created, :location => @stall }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @stall.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /stalls/1
  # PUT /stalls/1.xml
  def update
    @stall = Stall.find(params[:id])

    respond_to do |format|
      if @stall.update_attributes(params[:stall])
        format.html { redirect_to(@stall, :notice => 'Stall was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @stall.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /stalls/1
  # DELETE /stalls/1.xml
  def destroy
    @stall = Stall.find(params[:id])
    @stall.destroy

    respond_to do |format|
      format.html { redirect_to(stalls_url) }
      format.xml  { head :ok }
    end
  end
end
