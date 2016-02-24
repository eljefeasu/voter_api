class VotesController < ApplicationController
  def create
    voter = Voter.where("token = ?", params["token"])
    voter = voter.first
    if voter == nil
      render json: "That token does not exist. Cannot vote."
    else
      vote = Vote.create(voter_id: voter.id, candidate_id: params["candidate_id"])
      if vote.valid?
        render json: vote
      elsif params["candidate_id"] == nil
        render json: "You did not enter a candidate id. Cannot place vote."
      else
        render json: "You have already voted. You may not vote again."
      end
    end
  end

  def destroy
  end

  def index
  end
end
