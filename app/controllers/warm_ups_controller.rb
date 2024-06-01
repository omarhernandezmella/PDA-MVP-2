class WarmUpsController < ApplicationController
    before_action :set_warm_up, only: %i[show edit update destroy]
  
    # GET /warm_ups
    def index
      @warm_ups = WarmUp.all
    end
  
    # GET /warm_ups/1
    def show
    end
  
    # GET /warm_ups/new
    def new
      @warm_up = WarmUp.new
    end
  
    # GET /warm_ups/1/edit
    def edit
    end
  
    # POST /warm_ups
    def create
      @warm_up = WarmUp.new(warm_up_params)
      if @warm_up.save
        redirect_to @warm_up, notice: 'Warm up was successfully created.'
      else
        render :new
      end
    end
  
    # PATCH/PUT /warm_ups/1
    def update
      if @warm_up.update(warm_up_params)
        redirect_to @warm_up, notice: 'Warm up was successfully updated.'
      else
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
      params.require(:warm_up).permit(:exercise, :training_id)
    end
  end