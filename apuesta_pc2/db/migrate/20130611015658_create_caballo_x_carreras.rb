class CreateCaballoXCarreras < ActiveRecord::Migration
  def change
    create_table :caballo_x_carreras do |t|
      t.integer :puesto

      t.timestamps
    end
  end
end
