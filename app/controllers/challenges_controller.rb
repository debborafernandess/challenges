class ChallengesController < ApplicationController
  before_action :authenticate_user!, only: [:start]
  before_action :set_challenge, only: [:show, :start, :finish]

  def index; end

  def show; end

  def start
    @challenge.started_challenges.create(user: current_user)
    redirect_to @challenge
  end

  def finish
    @started_challenge = @challenge.started_by?(current_user)
    @solution     = @started_challenge.finalize!
    flash[:notice] = 'Desafio finalizado!'

    redirect_to @solution
  end

  private

  def set_challenge
    @challenge = Challenge.find(params[:id])
  end
end
