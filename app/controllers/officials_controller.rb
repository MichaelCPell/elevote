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
    @district = @official.district


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
  end

  # POST /officials
  # POST /officials.json
  def create
    @official = Official.new(params[:official])


    @official.create_answers




    respond_to do |format|
      if @official.save
        format.html { redirect_to @official, notice: 'official was successfully created.' }
        format.json { render json: @official, status: :created, location: @official }
      else
        format.html { render action: "new" }
        format.json { render json: @official.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /officials/1
  # PUT /officials/1.json
  def update
    @official = Official.find(params[:id])

    respond_to do |format|
      if @official.update_attributes(params[:official])
        format.html { redirect_to @official, notice: 'official was successfully updated.' }
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
