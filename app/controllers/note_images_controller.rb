class NoteImagesController < ApplicationController
  # GET /note_images
  # GET /note_images.json
  def index
    @note_images = Note.find(params[:note_id]).note_images

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @note_images }
    end
  end

  # GET /note_images/1
  # GET /note_images/1.json
  def show
    @note_image = NoteImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @note_image }
    end
  end

  # GET /note_images/new
  # GET /note_images/new.json
  def new
    @note_image = Note.find(params[:note_id]).note_images.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @note_image }
    end
  end

  # GET /note_images/1/edit
  def edit
    @note_image = NoteImage.find(params[:id])
  end

  # POST /note_images
  # POST /note_images.json
  def create
    # @note_image = NoteImage.new(params[:note_image])
    @note_image = Note.find(params[:note_id]).note_images.build(params[:note_image])
    
    respond_to do |format|
      if @note_image.save
        format.html { redirect_to @note_image.note, notice: 'Note image was successfully created.' }
        format.json { render json: @note_image, status: :created, location: @note_image }
      else
        format.html { render action: "new" }
        format.json { render json: @note_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /note_images/1
  # PUT /note_images/1.json
  def update
    @note_image = NoteImage.find(params[:id])

    respond_to do |format|
      if @note_image.update_attributes(params[:note_image])
        format.html { redirect_to [@note_image.note, @note_image], notice: 'Note image was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @note_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /note_images/1
  # DELETE /note_images/1.json
  def destroy
    @note_image = NoteImage.find(params[:id])
    @note_image.remove_image!
    @note_image.destroy

    respond_to do |format|
      format.html { redirect_to note_note_images_url(params[:note_id]) }
      format.json { head :ok }
    end
  end
end
