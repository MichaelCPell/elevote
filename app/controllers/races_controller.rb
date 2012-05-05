class RacesController < ApplicationController
  # GET /opinions
  # GET /opinions.json
   respond_to :html, :js

  def index


    @nav_content = "Click Here To Get Started"
    @races = Race.all




  end

  # GET /opinions/1
  # GET /opinions/1.json
  def show

    @races = Race.all
    @race = Race.find(params[:id])
    @nav_content = @race.name
    @candidates = Official.scoped_by_race_id(@race.id).order('updated_at DESC').page(params[:page]).per_page(3)





    respond_to do |format|
      format.html
      format.pdf do
      pdf = ContestPdf.new(Official.scoped_by_race_id(@race.id), @race)
         send_data pdf.render, type: "application/pdf",
                             disposition: "inline",
                               page_layout: "landscape"
      end


    end

  end

  # GET /opinions/new
  # GET /opinions/new.json
  def new

  end

  # GET /opinions/1/edit
  def edit

  end

  # POST /opinions
  # POST /opinions.json
  def create

  end

  # PUT /opinions/1
  # PUT /opinions/1.json
  def update

  end

  # DELETE /opinions/1
  # DELETE /opinions/1.json
  def destroy


  end



end


