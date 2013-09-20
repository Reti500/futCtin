class EquiposController < ApplicationController
  before_action :set_equipo, only: [:show, :edit, :update, :destroy]
  before_filter :require_login, only: [:new, :create, :edit, :update, :destroy]

  def index
    @equipos = Equipo.all.order("id ASC")
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipo
      @equipo = Equipo.find( params[:id] )
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipo_params
      params.require(:equipo).permit(:nombre)
    end
end
