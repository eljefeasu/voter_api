class CandidatesController < ApplicationController
  def index
    render json: Candidate.all
  end

  def show
    render json: Candidate.first
  end

  def create
    name = params["name"]
    hometown = params["hometown"]
    district = params["district"]
    party = params["party"]
    c = Candidate.create(name: name, hometown: hometown, district: district, party: party)
    render json: c
  end
end
