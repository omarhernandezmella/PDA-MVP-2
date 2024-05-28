class UsuariosController < ApplicationController
  before_action :set_usuario, only: %i[ show edit update destroy ]

  # GET /usuarios
  def index
    @usuarios = Usuario.all
  end

  # GET /usuarios/1
  def show
  end

  # GET /usuarios/new
  def new
    @usuario = Usuario.new
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  def create
    @usuario = Usuario.new(usuario_params)

    if @usuario.save
      redirect_to @usuario, notice: 'Usuario was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /usuarios/1
  def update
    if @usuario.update(usuario_params)
      redirect_to @usuario, notice: 'Usuario was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /usuarios/1
  def destroy
    @usuario.destroy
    redirect_to usuarios_url, notice: 'Usuario was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def usuario_params
      params.require(:usuario).permit(:weight, :height, :lesions, :genre, :physical_activity)
    end
end