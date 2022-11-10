class ExperiencesController < ApplicationController
  before_action :set_experience, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]

  def show
  end

  def index
    @experiences = nil
    if params[:query].present?
      query_params = params[:query]
      @experiences = Experience.near(query_params, 1)
    else
      @experiences = Experience.all
    end
      # The `geocoded` scope filters only experiences with coordinates
      @experiences = @experiences.geocoded
      @markers = @experiences.map do |experience|
        {
          lat: experience.latitude,
          lng: experience.longitude
        }
      end
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user
    if @experience.valid?
      @experience.save
      redirect_to overview_experience_path(@experience), notice: "New experience created !"
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
    flash[:notice] = "Your experience has been deleted"
    redirect_to my_experiences_path, status: :see_other
  end

  def overview
  end

  def description
  end

  def settings
  end

  def contact
  end

  def photos
    @photos = @experience.photos
  end

  def delete_cover_attachment
    @cover_url = ActiveStorage::Attachment.find(params[:id])
    @cover_url.purge
    redirect_back(fallback_location: request.referer)
  end


  private

  def to_submit?
    !@accommodation.description.blank? && !@accommodation.price.blank? && !@accommodation.address.blank? ? true : false
  end

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
                                        :cover,
                                        photos: [])
  end
end
