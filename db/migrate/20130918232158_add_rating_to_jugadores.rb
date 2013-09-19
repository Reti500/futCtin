class AddRatingToJugadores < ActiveRecord::Migration
  def change
    add_column :jugadores, :rating, :int
  end
end
