class ExperiencesController < ApplicationController
  before_action :set_experience, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:show]

  def index
    @accommodations = current_user.accommodations
  end


  def show
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user
    if @experience.valid?
      @experience.save
      redirect_to experience_path(@experience)
    else
      render :new, notice: "Oops, something went wrong while saving your experience."
    end

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

  def overview
  end

  def listing
  end

  def amenities
  end


  private

  def experience_params
    params.require(:experience).permit(:name, :address, :listing_type, :website, :description)
  end

  def set_experience
    @experience = Experience.find(params[:id])
  end
end
