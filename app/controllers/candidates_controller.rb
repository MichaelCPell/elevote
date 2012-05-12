class CandidatesController < ApplicationController
  # GET /candidates
  # GET /candidates.json

  before_filter :authenticated?, :only => [:edit, :update]
  before_filter :correct_candidate, :only => [:edit, :update]


  def index
    @candidates = Candidate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @candidates }
      format.js
    end
  end

  # GET /candidates/1
  # GET /candidates/1.json
  def show
    @candidate = Candidate.find(params[:id])
    @candidate.build_my_statements


    @abouts = @candidate.statements.where(category: "about")

       respond_to do |format|
      format.html
      format.js
    end

  end

  # GET /candidates/new
  # GET /candidates/new.json
  def new
    @candidate = Candidate.new


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @candidate }
    end
  end

  # GET /candidates/1/edit
  def edit
    @candidate = Candidate.find(params[:id])


    if @candidate.short_goals.count == 0
      3.times do
        @candidate.short_goals.build

      end
    end

    if @candidate.short_achievements.count == 0
      3.times do
        @candidate.short_achievements.build

      end
    end


  end

  # POST /candidates
  # POST /candidates.json
  def create
    @candidate = Candidate.create(params[:candidate])



      session[:candidate] = @candidate
      redirect_to @candidate

  end

  # PUT /candidates/1
  # PUT /candidates/1.json
  def update


  end

  # DELETE /candidates/1
  # DELETE /candidates/1.json
  def destroy
    @candidate = Candidate.find(params[:id])
    @candidate.destroy

    respond_to do |format|
      format.html { redirect_to candidates_url }
      format.json { head :ok }
    end
  end


  private

    def authenticated?
      if current_candidate.nil?
        redirect_to(new_session_path)
      end
    end

    def correct_candidate
      @candidate = Candidate.find(params[:id])
      redirect_to(root_path) unless current_candidate == @candidate
    end



end
