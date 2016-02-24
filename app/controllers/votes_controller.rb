class VotesController < ApplicationController
  def create
    voter = Voter.find_by_token(params["token"])
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
    voter = Voter.find_by_token(params["token"])
    if voter == nil
      render json: "That token does not exist. Cannot destroy record."
    else
      vote = Vote.find_by_voter_id(voter.id)
      if vote == nil
        render json: "Cannot find a vote by this user."
      else
        vote.destroy
        render json: "Vote has been destroyed."
      end
    end
  end

  def index
    render json: Candidate.all
  end
end
