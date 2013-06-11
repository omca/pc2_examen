class CreateCarreras < ActiveRecord::Migration
  def change
    create_table :carreras do |t|

      t.timestamps
    end
  end
end
