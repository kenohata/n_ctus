class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def index
    # @comments = Comment.all
    @comments = Micropost.find(params[:micropost_id]).comments.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    # @comment = Comment.new
    @comment = Micropost.find(params[:micropost_id]).comments.build

    respond_to do |format|
         format.html # new.html.erb
         format.json { render json: @comment }
       end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    # @comment = Comment.new(params[:comment])
    @comment = current_user.comments.build(params[:comment])
    @comment.micropost_id = params[:micropost_id]

    respond_to do |format|
      if @comment.save
        format.html { redirect_to campus_path, notice: 'Comment was successfully created.' }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to [@comment.micropost,@comment], notice: 'Comment was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to micropost_comments_url(params[:micropost_id]) }
      format.json { head :ok }
    end
  end
end
