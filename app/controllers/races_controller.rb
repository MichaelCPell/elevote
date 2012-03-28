class RacesController < ApplicationController
  # GET /opinions
  # GET /opinions.json


  def index
    @races = Race.all


  end

  # GET /opinions/1
  # GET /opinions/1.json
  def show
    @races = Race.all
    @race = Race.find(params[:id])


    list_of_candidates = Rails.cache.fetch('list_of_candidates') { Official.order('random()')}

    @candidates = list_of_candidates.scoped_by_race_id(@race.id).page(params[:page]).per_page(5)

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


