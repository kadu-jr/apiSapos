class CreateQueries < ActiveRecord::Migration[5.2]
  def change
    create_table :queries do |t|
      t.string :name
      t.string :description
      t.text :sql

      t.timestamps
    end
  end
end
