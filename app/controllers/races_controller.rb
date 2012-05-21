class RacesController < ApplicationController

   respond_to :html, :js

   before_filter :instantiate_booth

  def index
    session[:site_id] = params[:site_id] if params[:site_id]
    @nav_content = "Click Here To Get Started"
    @races = Race.all
  end


  def show
    @site = current_site

    @races = Race.all
    @race = Race.find(params[:id])
    @nav_content = @race.name
    @candidates = @site.candidates.scoped_by_race_id(@race.id).order('updated_at DESC').page(params[:page]).per_page(3)

    respond_to do |format|
      format.html
      format.pdf do
      pdf = ContestPdf.new(Candidate.scoped_by_race_id(@race.id), @race)
         send_data pdf.render, type: "application/pdf",
                             disposition: "inline",
                               page_layout: "landscape"
      end
    end

  end


  def new
    @race = Race.new
  end

  # GET /opinions/1/edit
  def edit

  end

  # POST /opinions
  # POST /opinions.json
  def create
    @race = Race.create(params[:race])
    redirect_to races_path
  end

  # PUT /opinions/1
  # PUT /opinions/1.json
  def update

  end

  # DELETE /opinions/1
  # DELETE /opinions/1.json
  def destroy


  end

  private

  def instantiate_booth
    session[:candidate_ids] ||= []
  end



end


