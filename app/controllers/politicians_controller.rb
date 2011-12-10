class PoliticiansController < ApplicationController
  # GET /politicians
  # GET /politicians.json

  before_filter :authenticated?, :only => [:edit, :update]
  before_filter :correct_politician, :only => [:edit, :update]

  def index
    @politicians = Politician.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @politicians }
    end
  end

  # GET /politicians/1
  # GET /politicians/1.json
  def show
    @politician = Politician.find(params[:id])
    @district = @politician.district


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @politician }
    end
  end

  # GET /politicians/new
  # GET /politicians/new.json
  def new
    @politician = Politician.new


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @politician }
    end
  end

  # GET /politicians/1/edit
  def edit
    @politician = Politician.find(params[:id])
  end

  # POST /politicians
  # POST /politicians.json
  def create
    @politician = Politician.new(params[:politician])


    @politician.create_answers




    respond_to do |format|
      if @politician.save
        format.html { redirect_to @politician, notice: 'Politician was successfully created.' }
        format.json { render json: @politician, status: :created, location: @politician }
      else
        format.html { render action: "new" }
        format.json { render json: @politician.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /politicians/1
  # PUT /politicians/1.json
  def update
    @politician = Politician.find(params[:id])

    respond_to do |format|
      if @politician.update_attributes(params[:politician])
        format.html { redirect_to @politician, notice: 'Politician was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @politician.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /politicians/1
  # DELETE /politicians/1.json
  def destroy
    @politician = Politician.find(params[:id])
    @politician.destroy

    respond_to do |format|
      format.html { redirect_to politicians_url }
      format.json { head :ok }
    end
  end


  private

    def authenticated?
      if current_politician.nil?
        redirect_to(new_session_path)
      end
    end

    def correct_politician
      @politician = Politician.find(params[:id])
      redirect_to(root_path) unless current_politician == @politician
    end



end
