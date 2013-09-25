class EquiposController < ApplicationController
  before_action :set_equipo, only: [:show, :edit, :selectJugador, :update, :destroy]
  before_filter :require_login, only: [:new, :create, :edit, :update, :destroy]

  def index
    @equipos = Equipo.all.order("id ASC")
    @jugadores = Jugadore.all.order( "nombre ASC" )

    respond_to do |format|
      format.html
      format.json
      format.js
    end
  end

  def show
  end

  def selectJugador
    @jugadores = Jugadore.all
  end

  def addJugador
    

  end

  def new
    @equipo = Equipo.new()
  end

  def create
    @equipo = Equipo.new( equipo_params )

    respond_to do |format|
      if @equipo.save
        @equipo.create_datos_equipo(:juegosJ => 0, :juegosG => 0, 
          :juegosE => 0, :juegosP => 0, :golesF => 0, :golesC => 0,
          :diferencia => 0, :puntos => 0)

        format.html { redirect_to @equipo, notice: 'Equipo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @equipo }
      else
        format.html { render action: 'new' }
        format.json { render json: @equipo.errors, status: :unprocessable_entity }
      end
    end

  end

  def edit
  end

  def update
  end

  def destroy
    @equipo.destroy
    respond_to do |format|
      format.html { redirect_to :equipos }
      format.json { head :no_content }
    end
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
