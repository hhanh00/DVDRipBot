class DisksController < ApplicationController
  # GET /disks
  # GET /disks.xml
  def index
    @disks = Disk.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @disks }
    end
  end

  # GET /disks/1
  # GET /disks/1.xml
  def show
    @disk = Disk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @disk }
    end
  end

  # GET /disks/new
  # GET /disks/new.xml
  def new
    @disk = Disk.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @disk }
    end
  end

  # GET /disks/1/edit
  def edit
    @disk = Disk.find(params[:id])
  end

  # POST /disks
  # POST /disks.xml
  def create
    @disk = Disk.new(params[:disk])

    respond_to do |format|
      if @disk.save
        flash[:notice] = 'Disk was successfully created.'
        format.html { redirect_to(disks_url) }
        format.xml  { render :xml => @disk, :status => :created, :location => @disk }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @disk.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /disks/1
  # PUT /disks/1.xml
  def update
    @disk = Disk.find(params[:id])

    respond_to do |format|
      if @disk.update_attributes(params[:disk])
        flash[:notice] = 'Disk was successfully updated.'
        format.html { redirect_to(disks_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @disk.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /disks/1
  # DELETE /disks/1.xml
  def destroy
    @disk = Disk.find(params[:id])
    @disk.destroy

    respond_to do |format|
      format.html { redirect_to(disks_url) }
      format.xml  { head :ok }
    end
  end
end
