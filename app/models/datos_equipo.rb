class DatosEquipo < ActiveRecord::Base
	attr_accessible :juegosJ, :juegosG, :juegosE, :juegosP, :golesF, :golesC, :diferencia, :puntos

	belongs_to :equipo
end
