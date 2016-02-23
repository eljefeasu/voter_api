class VotersController < ApplicationController
  def index
    render json: Voter.all
  end

  def show
  end

  def create
    name = params["name"]
    party = params["party"]
    token = SecureRandom.hex
    @voter = Voter.create(name: name, party: party, token: token)
    if @voter.valid?
      redirect_to action: "show", token: @voter.token
    end
  end
end
