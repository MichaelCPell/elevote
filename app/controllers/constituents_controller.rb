class ConstituentsController < ApplicationController
  # GET /constituents
  # GET /constituents.json
  def index
    @constituents = Constituent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @constituents }
    end
  end

  # GET /constituents/1
  # GET /constituents/1.json
  def show
    @nav_content = "Click to See Elections Again"

    @constituent = current_constituent
    session[:official_ids] ||= []



    @candidates = []
    session[:official_ids].each do |f|
      unless f.blank?
      @candidates << Official.find(f)
      end
    end
    @candidates = @candidates.uniq.group_by(&:race_id)



    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @constituent }
    end
  end

  # GET /constituents/new
  # GET /constituents/new.json
  def new
    @constituent = Constituent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @constituent }
    end
  end

  # GET /constituents/1/edit
  def edit
    @constituent = Constituent.find(params[:id])
  end

  # POST /constituents
  # POST /constituents.json
  def create
    @constituent = Constituent.new(params[:constituent])

    respond_to do |format|
      if @constituent.save
        format.html { redirect_to @constituent, notice: 'Constituent was successfully created.' }
        format.json { render json: @constituent, status: :created, location: @constituent }
      else
        format.html { render action: "new" }
        format.json { render json: @constituent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /constituents/1
  # PUT /constituents/1.json
  def update
    @constituent = Constituent.find(params[:id])

    respond_to do |format|
      if @constituent.update_attributes(params[:constituent])
        format.html { redirect_to @constituent, notice: 'Constituent was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @constituent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /constituents/1
  # DELETE /constituents/1.json
  def destroy
    @constituent = Constituent.find(params[:id])
    @constituent.destroy

    respond_to do |format|
      format.html { redirect_to constituents_url }
      format.json { head :ok }
    end
  end
end
