class CreateTipoApuesta < ActiveRecord::Migration
  def change
    create_table :tipo_apuesta do |t|
      t.string :name

      t.timestamps
    end
  end
end
