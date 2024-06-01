class PersonalInformationsController < ApplicationController
    before_action :set_personal_information, only: %i[show edit update destroy]
  
    # GET /personal_informations
    def index
      @personal_informations = PersonalInformation.all
    end
  
    # GET /personal_informations/1
    def show
    end
  
    # GET /personal_informations/new
    def new
      @personal_information = PersonalInformation.new
    end
  
    # GET /personal_informations/1/edit
    def edit
    end
  
    # POST /personal_informations
    def create
      @personal_information = PersonalInformation.new(personal_information_params)
      if @personal_information.save
        redirect_to @personal_information, notice: 'Personal information was successfully created.'
      else
        render :new
      end
    end
  
    # PATCH/PUT /personal_informations/1
    def update
      if @personal_information.update(personal_information_params)
        redirect_to @personal_information, notice: 'Personal information was successfully updated.'
      else
        render :edit
      end
    end
  
    # DELETE /personal_informations/1
    def destroy
      @personal_information.destroy
      redirect_to personal_informations_url, notice: 'Personal information was successfully destroyed.'
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_information
      @personal_information = PersonalInformation.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def personal_information_params
      params.require(:personal_information).permit(:weight, :height, :gender, :user_id)
    end
  end