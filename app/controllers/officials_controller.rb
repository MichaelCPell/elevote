class OfficialsController < ApplicationController
  # GET /officials
  # GET /officials.json

  before_filter :authenticated?, :only => [:edit, :update]
  before_filter :correct_official, :only => [:edit, :update]

  def index
    @officials = Official.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @officials }
    end
  end

  # GET /officials/1
  # GET /officials/1.json
  def show
    @official = Official.find(params[:id])

    @comment = @official.comments.build
    @updates = @official.updates

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @official }
    end
  end

  # GET /officials/new
  # GET /officials/new.json
  def new
    @official = Official.new


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @official }
    end
  end

  # GET /officials/1/edit
  def edit
    @official = Official.find(params[:id])


    if @official.short_goals.count == 0
      3.times do
        @official.short_goals.build

      end
    end

    if @official.short_achievements.count == 0
      3.times do
        @official.short_achievements.build

      end
    end


  end

  # POST /officials
  # POST /officials.json
  def create
    @official = Official.create(params[:official])



      session[:official] = @official
      redirect_to @official, :notice => "Logged in!"


  end

  # PUT /officials/1
  # PUT /officials/1.json
  def update
    @official = Official.find(params[:id])




    respond_to do |format|
      if @official.update_attributes(params[:official])
        format.html { redirect_to race_path(@official.race_id), notice: 'official was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @official.errors, status: :unprocessable_entity }
      end
    end


  end

  # DELETE /officials/1
  # DELETE /officials/1.json
  def destroy
    @official = Official.find(params[:id])
    @official.destroy

    respond_to do |format|
      format.html { redirect_to officials_url }
      format.json { head :ok }
    end
  end


  private

    def authenticated?
      if current_official.nil?
        redirect_to(new_session_path)
      end
    end

    def correct_official
      @official = Official.find(params[:id])
      redirect_to(root_path) unless current_official == @official
    end



end
