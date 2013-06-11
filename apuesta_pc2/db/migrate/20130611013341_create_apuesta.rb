class CreateApuesta < ActiveRecord::Migration
  def change
    create_table :apuesta do |t|
      t.integer :amount_apuesta
      t.integer :amount_pagado

      t.timestamps
    end
  end
end
