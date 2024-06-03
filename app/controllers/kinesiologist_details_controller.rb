class KinesiologistDetailsController < ApplicationController
    before_action :set_kinesiologist_detail, only: %i[show edit update destroy]

    # GET /kinesiologist_details
    def index
      @kinesiologist_details = KinesiologistDetail.all
    end

    # GET /kinesiologist_details/1
    def show
    end

    # GET /kinesiologist_details/new
    def new
      @kinesiologist_detail = KinesiologistDetail.new
    end

    # GET /kinesiologist_details/1/edit
    def edit
    end

    # POST /kinesiologist_details
    def create
      @kinesiologist_detail = KinesiologistDetail.new(kinesiologist_detail_params)
      if @kinesiologist_detail.save
        redirect_to @kinesiologist_detail, notice: 'Kinesiologist detail was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /kinesiologist_details/1
    def update
      if @kinesiologist_detail.update(kinesiologist_detail_params)
        redirect_to @kinesiologist_detail, notice: 'Kinesiologist detail was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /kinesiologist_details/1
    def destroy
      @kinesiologist_detail.destroy
      redirect_to kinesiologist_details_url, notice: 'Kinesiologist detail was successfully destroyed.'
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_kinesiologist_detail
      @kinesiologist_detail = KinesiologistDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kinesiologist_detail_params
      params.require(:kinesiologist_detail).permit(:specialty, :description, :user_id)
    end
  end
