require 'securerandom'

class VotersController < ApplicationController
  def create
    v = Voter.create!(name: params["name"], party: params["party"])
    render json: v
  end

  def show
    v = Voter.where("token = ?", params["token"])
    v = v.first
    if v == nil
      render json: "That token is incorrect. Cannot display information."
    else
      v.token == params["token"]
      render json: v
    end
  end

  def update
  end
end
