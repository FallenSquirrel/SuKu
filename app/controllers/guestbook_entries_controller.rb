class GuestbookEntriesController < ApplicationController
  # GET /guestbook_entries
  # GET /guestbook_entries.json
  def index
    if params[:page]
      @page = params[:page].to_i
    else
      @page = 0
    end
    
    all_guestbook_entries = GuestbookEntry.all.sort_by(&:created_at).reverse
    @guestbook_entries = []
    
    @number_of_guestbook_entries = all_guestbook_entries.length
    @number_of_pages = @number_of_guestbook_entries/GUESTBOOK_ENTRIES_PER_PAGE
    
    
    0.upto(GUESTBOOK_ENTRIES_PER_PAGE - 1) do |i|
      if all_guestbook_entries[i + @page * GUESTBOOK_ENTRIES_PER_PAGE]
        @guestbook_entries << all_guestbook_entries[i + @page * GUESTBOOK_ENTRIES_PER_PAGE]
      end
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @guestbook_entries }
    end
  end

  # GET /guestbook_entries/1
  # GET /guestbook_entries/1.json
  def show
    @guestbook_entry = GuestbookEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @guestbook_entry }
    end
  end

  # GET /guestbook_entries/new
  # GET /guestbook_entries/new.json
  def new
    @guestbook_entry = GuestbookEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @guestbook_entry }
    end
  end

  # GET /guestbook_entries/1/edit
  def edit
    @guestbook_entry = GuestbookEntry.find(params[:id])
  end

  # POST /guestbook_entries
  # POST /guestbook_entries.json
  def create
    @guestbook_entry = GuestbookEntry.new(params[:guestbook_entry])

    respond_to do |format|
      if @guestbook_entry.save
        format.html { redirect_to guestbook_path, notice: 'Guestbook entry was successfully created.' }
        format.json { render json: @guestbook_entry, status: :created, location: @guestbook_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @guestbook_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /guestbook_entries/1
  # PUT /guestbook_entries/1.json
  def update
    @guestbook_entry = GuestbookEntry.find(params[:id])

    respond_to do |format|
      if @guestbook_entry.update_attributes(params[:guestbook_entry])
        format.html { redirect_to guestbook_path, notice: 'Guestbook entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @guestbook_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guestbook_entries/1
  # DELETE /guestbook_entries/1.json
  def destroy
    @guestbook_entry = GuestbookEntry.find(params[:id])
    @guestbook_entry.destroy

    respond_to do |format|
      format.html { redirect_to guestbook_entries_url }
      format.json { head :no_content }
    end
  end
end
