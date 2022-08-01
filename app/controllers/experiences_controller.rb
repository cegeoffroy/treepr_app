class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]

  def index
    @experiences = Experience.all
  end

  def show
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.save

    redirect_to experience_path(@experience)
  end

  def edit
  end

  def update
    @experience.update(experience_params)

    redirect_to experience_path(@experience)
  end

  def destroy
    @experience.destroy

    redirect_to experiences_path, status: :see_other
  end

  private

  def experience_params
    params.require(:experience).permit(:name, :address)
  end

  def set_experience
    @experience = Experience.find(params[:id])
  end
end
