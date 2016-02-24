require 'securerandom'

class VotersController < ApplicationController
  def create
    v = Voter.create!(name: params["name"], party: params["party"])
    render json: v
  end

  def show
    v = Voter.find_by_token(params["token"])
    if v == nil
      render json: "That token is incorrect. Cannot display information."
    else
      v.token == params["token"]
      render json: v
    end
  end

  def update
    v = Voter.find_by_token(params["token"])
    if v == nil
      render json: "That token is incorrect. Cannot update information."
    else
      v.name = params["name"] if params["name"]
      v.party = params["party"] if params["party"]
      v.save!
      render json: v
    end
  end
end
