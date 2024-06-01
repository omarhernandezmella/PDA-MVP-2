class PersonalTrainerDetailsController < ApplicationController
    before_action :set_personal_trainer_detail, only: %i[show edit update destroy]
  
    # GET /personal_trainer_details
    def index
      @personal_trainer_details = PersonalTrainerDetail.all
    end
  
    # GET /personal_trainer_details/1
    def show
    end
  
    # GET /personal_trainer_details/new
    def new
      @personal_trainer_detail = PersonalTrainerDetail.new
    end
  
    # GET /personal_trainer_details/1/edit
    def edit
    end
  
    # POST /personal_trainer_details
    def create
      @personal_trainer_detail = PersonalTrainerDetail.new(personal_trainer_detail_params)
      if @personal_trainer_detail.save
        redirect_to @personal_trainer_detail, notice: 'Personal trainer detail was successfully created.'
      else
        render :new
      end
    end
  
    # PATCH/PUT /personal_trainer_details/1
    def update
      if @personal_trainer_detail.update(personal_trainer_detail_params)
        redirect_to @personal_trainer_detail, notice: 'Personal trainer detail was successfully updated.'
      else
        render :edit
      end
    end
  
    # DELETE /personal_trainer_details/1
    def destroy
      @personal_trainer_detail.destroy
      redirect_to personal_trainer_details_url, notice: 'Personal trainer detail was successfully destroyed.'
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_trainer_detail
      @personal_trainer_detail = PersonalTrainerDetail.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def personal_trainer_detail_params
      params.require(:personal_trainer_detail).permit(:specialty, :profession, :user_id)
    end
  end
  