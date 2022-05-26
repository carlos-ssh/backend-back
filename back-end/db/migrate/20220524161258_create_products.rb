# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :image
      t.string :name
      t.text :description
      t.string :colors
      t.string :size
      t.float :price
      t.references :category

      t.timestamps
    end
  end
end
