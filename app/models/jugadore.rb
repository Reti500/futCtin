class Jugadore < ActiveRecord::Base
	attr_accessible :nombre, :posicion, :rating

	belongs_to :equipo
end
