class CreateApuestaDetails < ActiveRecord::Migration
  def change
    create_table :apuesta_details do |t|

      t.timestamps
    end
  end
end
