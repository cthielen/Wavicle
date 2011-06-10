class DjsController < ApplicationController
  # GET /djs
  # GET /djs.xml
  def index
    @djs = Dj.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @djs }
    end
  end

  # GET /djs/1
  # GET /djs/1.xml
  def show
    @dj = Dj.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dj }
    end
  end

  # GET /djs/new
  # GET /djs/new.xml
  def new
    @dj = Dj.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dj }
    end
  end

  # GET /djs/1/edit
  def edit
    @dj = Dj.find(params[:id])
  end

  # POST /djs
  # POST /djs.xml
  def create
    @dj = Dj.new(params[:dj])

    respond_to do |format|
      if @dj.save
        format.html { redirect_to(@dj, :notice => 'Dj was successfully created.') }
        format.xml  { render :xml => @dj, :status => :created, :location => @dj }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dj.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /djs/1
  # PUT /djs/1.xml
  def update
    @dj = Dj.find(params[:id])

    respond_to do |format|
      if @dj.update_attributes(params[:dj])
        format.html { redirect_to(@dj, :notice => 'Dj was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dj.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /djs/1
  # DELETE /djs/1.xml
  def destroy
    @dj = Dj.find(params[:id])
    @dj.destroy

    respond_to do |format|
      format.html { redirect_to(djs_url) }
      format.xml  { head :ok }
    end
  end
end
