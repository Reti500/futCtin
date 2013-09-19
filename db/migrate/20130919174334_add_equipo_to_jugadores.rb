class AddEquipoToJugadores < ActiveRecord::Migration
  def change
    add_column :jugadores, :equipo_id, :int
  end
end
