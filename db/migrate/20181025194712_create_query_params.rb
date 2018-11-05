class CreateQueryParams < ActiveRecord::Migration[5.2]
  def change
    create_table :query_params do |t|
      t.references :query
      t.string :name
      t.string :default_value
      t.string :value_type

      t.timestamps
    end
  end
end
