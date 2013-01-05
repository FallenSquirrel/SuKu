class GallerySetController < ApplicationController

  # GET /gallery_set
  def index
    @gallery_set = Gallery_set.all
  end
  
  # GET /bands/1
  def show
    @gallery_set = Gallery_set.find(params[:id])
  end

  # GET /bands/new
  def new
    @gallery_set = Gallery_set.new
  end

  # GET /gallery_set/1/edit
  def edit
    @gallery_set = Gallery_set.find(params[:id])
  end

  # POST /gallery_set
  def create
    @gallery_set = Gallery_set.new(params[:gallery_set])
    
    if @gallery_set.save then
      redirect_to @gallery_set, notice: 'Gallery was successfully created.'
    else
      renter action: "new"
    end
  end

  # PUT /gallery_set/1
  def update
    @gallery_set = Gallery_set.find(params[:id])
    
    respond_to do |format|
      if @gallery_set.update_attributes(params[:gallery_set])
        format.html { redirect_to @gallery_set, notice: 'Gallery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gallery_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gallery_set/1
  def destroy
    @gallery_set = Gallery_set.find(params[:id])
    @gallery_set.destroy

    redirect_to list_events
  end
end
