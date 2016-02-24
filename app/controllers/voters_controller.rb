require 'securerandom'

class VotersController < ApplicationController
  def create
    v = Voter.create!(name: params["name"], party: params["party"])
    render json: v
  end

  def show
  end

  def update
  end
end
