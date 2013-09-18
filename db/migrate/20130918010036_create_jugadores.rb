class CreateJugadores < ActiveRecord::Migration
  def change
    create_table :jugadores do |t|
      t.string :nombre
      t.string :posicion

      t.timestamps
    end
  end
end
