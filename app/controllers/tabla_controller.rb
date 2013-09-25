class TablaController < ApplicationController
  def index
  	@equipos = Equipo.all.order( "id ASC" )
  end
end
