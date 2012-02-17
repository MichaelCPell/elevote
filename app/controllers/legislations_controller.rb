class LegislationsController < ApplicationController
  before_filter :parse_facebook_cookies

  def parse_facebook_cookies
      @facebook_cookies ||= Koala::Facebook::OAuth.new('205528859544975','6a0d3bedf7d1674f20b8678fcd629a87').get_user_info_from_cookie(cookies)
  end



  # GET /legislations
  # GET /legislations.json
  def index





    @legislations = Legislation.all(:order => 'votes_count DESC')


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @legislations }
    end
  end

  # GET /legislations/1
  # GET /legislations/1.json
  def show


      @legislation = Legislation.find(params[:id])
      @comment = @legislation.comments.build


      @opposers = @legislation.opinions.oppose

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @legislation }
    end
  end

  # GET /legislations/new
  # GET /legislations/new.json
  def new
    @legislation = Legislation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @legislation }
    end
  end

  # GET /legislations/1/edit
  def edit
    @legislation = Legislation.find(params[:id])
  end

  # POST /legislations
  # POST /legislations.json
  def create
    @legislation = Legislation.new(params[:legislation])

    respond_to do |format|
      if @legislation.save
        format.html { redirect_to @legislation, notice: 'Legislation was successfully created.' }
        format.json { render json: @legislation, status: :created, location: @legislation }
      else
        format.html { render action: "new" }
        format.json { render json: @legislation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /legislations/1
  # PUT /legislations/1.json
  def update
    @legislation = Legislation.find(params[:id])

    respond_to do |format|
      if @legislation.update_attributes(params[:legislation])
        format.html { redirect_to @legislation, notice: 'Legislation was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @legislation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legislations/1
  # DELETE /legislations/1.json
  def destroy
    @legislation = Legislation.find(params[:id])
    @legislation.destroy

    respond_to do |format|
      format.html { redirect_to legislations_url }
      format.json { head :ok }
    end
  end

  def vote
    @legislation = Legislation.find(params[:id])
    Vote.create({:constituent_id => current_constituent.id, :voteable_id => @legislation.id, :voteable_type => "Legislation"})
    redirect_to :back
  end

  def failure
     redirect_to new_session_path, :flash => {:error => "Could not log you in. #{params[:message]}"}
  end
end
