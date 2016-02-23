class VotesController < ApplicationController
  def index
    render json: Vote.all
  end

  def show
  end

  def create
  end
end
