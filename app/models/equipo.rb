class Equipo < ActiveRecord::Base
	attr_accessible :nombre

	has_many :jugadores
	has_one :datos_equipo
end
