class EndorsementsController < ApplicationController
  respond_to :html, :js

  def new
    session[:candidate_ids] ||= []
    current_user ? current_user_id = current_user.id : current_user_id = nil

    candidate_id = params[:candidate_id]
    index_of_candidate_id = session[:candidate_ids].index(params[:candidate_id])

    if index_of_candidate_id.blank?
      session[:candidate_ids] << candidate_id
      if current_user_id  #This is extra logic that executes if the user is signed in
        Endorsement.create(endorsementer_id: current_user_id,
                           endorsementer_type: "User",
                           endorsementable_id: candidate_id,
                           endorsementable_type: "Candidate")
      end
    else
      session[:candidate_ids].delete(params[:candidate_id])
      if current_user_id #This is extra logic that executes if the user is signed in
        destroy_my_endorsement(current_user_id, candidate_id)
      end
    end


    @candidate = Candidate.find(candidate_id)
  end


  private

  def destroy_my_endorsement(endorsementer, endorsementable)
    @endorsement = Endorsement.where({endorsementable_id: endorsementable, endorsementer_id: endorsementer}).first
    @endorsement.destroy
  end
end
