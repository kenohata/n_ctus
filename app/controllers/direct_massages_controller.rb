class DirectMassagesController < ApplicationController
  # GET /direct_massages
  # GET /direct_massages.json
  def index
    @direct_massages = DirectMassage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @direct_massages }
    end
  end

  # GET /direct_massages/1
  # GET /direct_massages/1.json
  def show
    @direct_massage = DirectMassage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @direct_massage }
    end
  end

  # GET /direct_massages/new
  # GET /direct_massages/new.json
  def new
    @direct_massage = DirectMassage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @direct_massage }
    end
  end

  # GET /direct_massages/1/edit
  def edit
    @direct_massage = DirectMassage.find(params[:id])
  end

  # POST /direct_massages
  # POST /direct_massages.json
  def create
    @direct_massage = DirectMassage.new(params[:direct_massage])

    respond_to do |format|
      if @direct_massage.save
        format.html { redirect_to @direct_massage, notice: 'Direct massage was successfully created.' }
        format.json { render json: @direct_massage, status: :created, location: @direct_massage }
      else
        format.html { render action: "new" }
        format.json { render json: @direct_massage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /direct_massages/1
  # PUT /direct_massages/1.json
  def update
    @direct_massage = DirectMassage.find(params[:id])

    respond_to do |format|
      if @direct_massage.update_attributes(params[:direct_massage])
        format.html { redirect_to @direct_massage, notice: 'Direct massage was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @direct_massage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /direct_massages/1
  # DELETE /direct_massages/1.json
  def destroy
    @direct_massage = DirectMassage.find(params[:id])
    @direct_massage.destroy

    respond_to do |format|
      format.html { redirect_to direct_massages_url }
      format.json { head :ok }
    end
  end
end
