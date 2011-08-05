class LocationNamesController < ApplicationController
  # GET /location_names
  # GET /location_names.xml
  def index
    @location_names = LocationName.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @location_names }
    end
  end

  # GET /location_names/1
  # GET /location_names/1.xml
  def show
    @location_name = LocationName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @location_name }
    end
  end

  # GET /location_names/new
  # GET /location_names/new.xml
  def new
    @location_name = LocationName.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @location_name }
    end
  end

  # GET /location_names/1/edit
  def edit
    @location_name = LocationName.find(params[:id])
  end

  # POST /location_names
  # POST /location_names.xml
  def create
    raise "Can't create yet!"
    @location_name = LocationName.new(params[:location_name])

    respond_to do |format|
      if @location_name.save
        format.html { redirect_to(@location_name, :notice => 'Location name was successfully created.') }
        format.xml  { render :xml => @location_name, :status => :created, :location => @location_name }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @location_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /location_names/1
  # PUT /location_names/1.xml
  def update
    raise "Can't update yet!"
    @location_name = LocationName.find(params[:id])

    respond_to do |format|
      if @location_name.update_attributes(params[:location_name])
        format.html { redirect_to(@location_name, :notice => 'Location name was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @location_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /location_names/1
  # DELETE /location_names/1.xml
  def destroy
    raise "Can't delete yet!"
    @location_name = LocationName.find(params[:id])
    @location_name.destroy

    respond_to do |format|
      format.html { redirect_to(location_names_url) }
      format.xml  { head :ok }
    end
  end
end
