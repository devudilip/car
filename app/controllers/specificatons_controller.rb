class SpecificatonsController < ApplicationController
  # GET /specificatons
  # GET /specificatons.xml
  def index
    @specificatons = Specificaton.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @specificatons }
    end
  end

  # GET /specificatons/1
  # GET /specificatons/1.xml
  def show
    @specificaton = Specificaton.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @specificaton }
    end
  end

  # GET /specificatons/new
  # GET /specificatons/new.xml
  def new
    @specificaton = Specificaton.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @specificaton }
    end
  end

  # GET /specificatons/1/edit
  def edit
    @specificaton = Specificaton.find(params[:id])
  end

  # POST /specificatons
  # POST /specificatons.xml
  def create
    @specificaton = Specificaton.new(params[:specificaton])

    respond_to do |format|
      if @specificaton.save
        format.html { redirect_to(@specificaton, :notice => 'Specificaton was successfully created.') }
        format.xml  { render :xml => @specificaton, :status => :created, :location => @specificaton }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @specificaton.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /specificatons/1
  # PUT /specificatons/1.xml
  def update
    @specificaton = Specificaton.find(params[:id])

    respond_to do |format|
      if @specificaton.update_attributes(params[:specificaton])
        format.html { redirect_to(@specificaton, :notice => 'Specificaton was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @specificaton.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /specificatons/1
  # DELETE /specificatons/1.xml
  def destroy
    @specificaton = Specificaton.find(params[:id])
    @specificaton.destroy

    respond_to do |format|
      format.html { redirect_to(specificatons_url) }
      format.xml  { head :ok }
    end
  end
end
