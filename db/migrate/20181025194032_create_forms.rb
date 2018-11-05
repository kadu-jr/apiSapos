class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.string :nome
      t.string :descricao
      t.references :form_template, foreign_key: true
      t.references :query, foreign_key: true

      t.timestamps
    end
  end
end
