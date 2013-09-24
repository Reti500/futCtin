class CreateDatosEquipos < ActiveRecord::Migration
  def change
    create_table :datos_equipos do |t|
      t.integer :juegosJ
      t.integer :juegosG
      t.integer :juegosE
      t.integer :juegosP
      t.integer :golesF
      t.integer :golesC
      t.integer :diferencia
      t.integer :puntos
      t.integer :equipo_id

      t.timestamps
    end
  end
end
