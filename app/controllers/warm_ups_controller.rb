class WarmUpsController < ApplicationController
  before_action :set_warm_up, only: %i[show edit update destroy]

  # GET /warm_ups
  def index
    trainings = current_user.trainings
    @warm_ups = WarmUp.includes(:videos).where(training_id: trainings.pluck(:id))
  end

  # GET /warm_ups/1
  def show
  end

  # GET /warm_ups/new
  def new
    @warm_up = WarmUp.new
    @trainings = current_user.trainings
    @videos = Video.all
  end

  # GET /warm_ups/1/edit
  def edit
    @trainings = current_user.trainings
    @videos = Video.all
  end

  # POST /warm_ups
  def create
    @warm_up = WarmUp.new(warm_up_params)
    @warm_up.assign_videos(params[:warm_up][:video_ids]) if params[:warm_up][:video_ids].present?
    if @warm_up.save
      redirect_to @warm_up, notice: 'Warm up was successfully created.'
    else
      @trainings = current_user.trainings
      @videos = Video.all
      render :new
    end
  end
  
  def update
    if @warm_up.update(warm_up_params)
      redirect_to @warm_up, notice: 'Warm up was successfully updated.'
    else
      @trainings = current_user.trainings
      @videos = Video.all
      render :edit
    end
  end

  # DELETE /warm_ups/1
  def destroy
    @warm_up.destroy
    redirect_to warm_ups_url, notice: 'Warm up was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_warm_up
    @warm_up = WarmUp.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def warm_up_params
    params.require(:warm_up).permit(:exercise, :training_id, { video_ids: [] }, :video)
  end
end
