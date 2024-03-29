class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])
    @newcomment = @comment.children.build

    for child in @comment.children do
      @support = Array.new
      @support.push(child) if child.direction == "support"
    end
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    if params[:legislation_id]
      @commentable = Legislation.find(params[:legislation_id])
    end

    if params[:parent_id]
      @commentParent = Comment.find(params[:parent_id])
    end


    @comment = Comment.new


    if params[:legislation_id]
      @commentable_id = params[:legislation_id]
    end
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

    if params[:comment_id]
    @comment = Comment.find(params[:comment_id])
    @comment = @comment.comments.create(params[:comment])
    @comment.save

    elsif params[:legislation_id]
    @legislation = Legislation.find(params[:legislation_id])
    @comment = @legislation.comments.create(params[:comment])
    @comment.save

    elsif params[:official_id]
    @official = Official.find(params[:official_id])
    @comment = @official.comments.create(params[:comment])
    @comment.save

    else
    Comment.create(params[:comment])


    end

    redirect_to :back



  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
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
      format.html { redirect_to comments_url }
      format.json { head :ok }
    end
  end

  def vote
    @comment = Comment.find(params[:id])
    Endorsement.create(:constituent_id => current_constituent_id, :voteable_id => @comment.id, :voteable_type => "Comment")
    redirect_to :back
  end



end
