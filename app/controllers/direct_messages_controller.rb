class DirectMessagesController < ApplicationController
  # GET /direct_messages
  # GET /direct_messages.json
  def index
    # @direct_messages = DirectMessage.all
    @direct_messages = current_user.direct_messages
    
    @conv_users = User.find_all_by_id(DirectMessage.conversation_user_ids(current_user))

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @direct_messages }
    end
  end

  # GET /direct_messages/1
  # GET /direct_messages/1.json
  def show
    @direct_message = DirectMessage.find(params[:id])
    @direct_message.update_attribute(:unread, false)
    
    @sent_dms = DirectMessage.find_all_by_from_id_and_to_id(@direct_message.from_id, current_user.id)
    @received_dms = DirectMessage.find_all_by_from_id_and_to_id(current_user.id, @direct_message.from_id)
    
    @dms = fi@sent_dms + @received_dms
    
    @new_dm = current_user.direct_messages.build

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @direct_message }
    end
  end

  # GET /direct_messages/new
  # GET /direct_messages/new.json
  def new
    # @direct_message = DirectMessage.new
    @direct_message = User.find(params[:user_id]).direct_messages.build
    
    if current_user.id == params[:user_id]
    end
        
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @direct_message }
    end
  end

  # GET /direct_messages/1/edit
  def edit
    @direct_message = DirectMessage.find(params[:id])
  end

  # POST /direct_messages
  # POST /direct_messages.json
  def create
    # @direct_message = DirectMessage.new(params[:direct_message])
    @direct_message = User.find(params[:user_id]).direct_messages.build(params[:direct_message])
    @direct_message.from_id = current_user.id
    @direct_message.unread = true

    respond_to do |format|
        if @direct_message.save
          format.html { redirect_to user_profile_path(@direct_message.to_user), notice: 'Direct message was successfully sent.' }
          format.json { render json: @direct_message, status: :created, location: @direct_message }
        else
          format.html { render action: "new" }
          format.json { render json: @direct_message.errors, status: :unprocessable_entity }
        end
      end
  end

  # PUT /direct_messages/1
  # PUT /direct_messages/1.json
  def update
    @direct_message = DirectMessage.find(params[:id])

    respond_to do |format|
      if @direct_message.update_attributes(params[:direct_message])
        format.html { redirect_to @direct_message, notice: 'Direct message was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @direct_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /direct_messages/1
  # DELETE /direct_messages/1.json
  def destroy
    @direct_message = DirectMessage.find(params[:id])
    @direct_message.destroy

    respond_to do |format|
      format.html { redirect_to user_direct_messages_url(current_user) }
      format.json { head :ok }
    end
  end
end
