class CandidatesController < ApplicationController
  # GET /candidates
  # GET /candidates.json

  respond_to :json

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

    nav_content_is_my_contest(@candidate)

    @candidate.build_my_statements
       respond_to do |format|
      format.html
      format.js
    end

  end

  # GET /candidates/new
  # GET /candidates/new.json
  def new
    @candidate = Candidate.new

  end

  # GET /candidates/1/edit
  def edit
    @candidate = Candidate.find(params[:id])

  end

  # POST /candidates
  # POST /candidates.json
  def create
    @candidate = Candidate.create(params[:candidate])

      session[:candidate_id] = @candidate.id
      redirect_to @candidate

  end

  # PUT /candidates/1
  # PUT /candidates/1.json
  def update
    @candidate = Candidate.find(params[:id])
    @candidate.update_attributes(params[:candidate])

    respond_with @candidate
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

    def nav_content_is_my_contest(candidate)
      @nav_content = Race.find(candidate.race_id).name
    end



end
