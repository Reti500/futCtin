class JugadoresController < ApplicationController
  before_action :set_jugadore, only: [:show, :edit, :update, :destroy]
  before_filter :require_login, only: [:new, :create, :edit, :update, :destroy]
  # GET /jugadores
  # GET /jugadores.json
  def index
    @jugadores = Jugadore.all.order("id ASC")
  end

  # GET /jugadores/1
  # GET /jugadores/1.json
  def show
  end

  # GET /jugadores/new
  def new
    @jugadore = Jugadore.new
  end

  # GET /jugadores/1/edit
  def edit
  end

  # POST /jugadores
  # POST /jugadores.json
  def create
    @jugadore = Jugadore.new( jugadore_params )

    respond_to do |format|
      if @jugadore.save
        format.html { redirect_to @jugadore, notice: 'Jugadore was successfully created.' }
        format.json { render action: 'show', status: :created, location: @jugadore }
      else
        format.html { render action: 'new' }
        format.json { render json: @jugadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /jugadores/1/addAEquipo
  def addToEquipo
    @jugadore = Jugadore.find( params[:id] )

    unless @jugadore.equipo
      @equipo = Equipo.find_by_nombre( params[:nombre_equipo] )
      if @equipo.jugadores.length < 3
        @equipo << @jugadore
      end
    end
  end

  # PATCH/PUT /jugadores/1
  # PATCH/PUT /jugadores/1.json
  def update
    respond_to do |format|
      if @jugadore.update( jugadore_params )
        format.html { redirect_to @jugadore, notice: 'Jugadore was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @jugadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jugadores/1
  # DELETE /jugadores/1.json
  def destroy
    @jugadore.destroy
    respond_to do |format|
      format.html { redirect_to jugadores_url }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jugadore
      @jugadore = Jugadore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jugadore_params
      params.require(:jugadore).permit(:nombre, :posicion, :rating)
    end
end
