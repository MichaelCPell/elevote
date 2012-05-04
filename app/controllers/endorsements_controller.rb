class EndorsementsController < ApplicationController
  # GET /endorsements
  # GET /endorsements.json

  respond_to :html, :json
  def index
    @votes = Endorsement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @votes }
    end
  end

  # GET /endorsements/1
  # GET /endorsements/1.json
  def show
    @vote = Endorsement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vote }
    end
  end

  # GET /endorsements/new
  # GET /endorsements/new.json
  def new
    session[:official_ids] ||= []
    session[:official_ids] << params[:official_id]

    redirect_to '/booth'

  end

  # GET /endorsements/1/edit
  def edit
    @endorsement = Endorsement.find(params[:id])
  end

  # POST /endorsements
  # POST /endorsements.json
  def create
    session[:official_ids] ||= []
    session[:official_ids] << params[:official_id]

  end

  # PUT /endorsements/1
  # PUT /endorsements/1.json
  def update
    @endorsement = Endorsement.find(params[:id])

    respond_to do |format|
      if @endorsement.update_attributes(params[:endorsement])
        format.html { redirect_to @endorsement, notice: 'Endorsement was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @endorsement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endorsements/1
  # DELETE /endorsements/1.json
  def destroy
    @endorsement = Endorsement.find(params[:id])
    @endorsement.destroy

    respond_to do |format|
      format.html { redirect_to endorsements_url }
      format.json { head :ok }
    end
  end
end
