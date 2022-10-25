class ExperiencesController < ApplicationController
  before_action :set_experience, except: [:index, :new, :create]

  def show
  end

  def index
    @experiences = current_user.experiences
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user
    if @experience.valid?
      @experience.save
      redirect_to description_experience_path(@experience), notice: "New experience created !"
    else
      render :new, notice: "Oops, something went wrong while creating your experience."
    end
  end

  def edit
    render :new
  end

  def update
    if @experience.update(experience_params)
      flash[:notice] = "Saved..."

    else
      flash[:alert] = "Oops, something went wrong ..."
    end
    redirect_back(fallback_location: request.referer)
  end

  def destroy
    @experience.destroy
    flash[:notice] = "Listing deleted"
    redirect_to experiences_path, status: :see_other

  end

  def overview
  end

  def listing
  end

  def description
  end

  def pricing
  end

  def photos_upload
  end


  private

  def set_experience
    @experience = Experience.find(params[:id])
  end

  def experience_params
    params.require(:experience).permit(:name,
                                        :description,
                                        :exp_type,
                                        :address,
                                        :website,
                                        :exp_phone,
                                        :max_capacity,
                                        :status,
                                        :latitude,
                                        :longitude,
                                        photos: [])
  end
end
