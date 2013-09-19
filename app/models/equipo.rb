class Equipo < ActiveRecord::Base
	attr_accessible :nombre

	has_many :jugadores
end
