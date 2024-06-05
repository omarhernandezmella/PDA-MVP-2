class TrainingsController < ApplicationController
  before_action :set_training, only: %i[show edit update destroy]

  # GET /trainings
  def index
    @trainings = current_user.trainings
  end

  # GET /trainings/1
  def show
  end

  # GET /trainings/new
  def new
    @training = Training.new
  end

  # GET /trainings/1/edit
  def edit
    @training = Training.find(params[:id])
  end
  

  # POST /trainings
  def create
    @training = current_user.trainings.build(training_params)
    if @training.save
      redirect_to @training, notice: 'Training was successfully created.'
    else
      flash.now[:alert] = @training.errors.full_messages.to_sentence
      render :new
    end
  end

  # PATCH/PUT /trainings/1
  def update
    if @training.update(training_params)
      redirect_to @training, notice: 'Training was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /trainings/1
  def destroy
    @training.destroy
    redirect_to trainings_url, notice: 'Training was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_training
    @training = Training.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def training_params
    params.require(:training).permit(:exercise, :classification, :day)
  end
end
