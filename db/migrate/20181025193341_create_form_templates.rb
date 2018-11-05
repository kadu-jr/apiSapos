class CreateFormTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :form_templates do |t|
      t.string :name
      t.string :description
      t.text :code

      t.timestamps
    end
  end
end
