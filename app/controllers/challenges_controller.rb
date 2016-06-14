class ChallengesController < ApplicationController
  before_action :authenticate_user!, only: [:start]

  def index; end

  def show
    @challenge = Challenge.find(params[:id])
  end
end
