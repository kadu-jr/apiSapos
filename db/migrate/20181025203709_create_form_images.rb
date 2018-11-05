class CreateFormImages < ActiveRecord::Migration[5.2]
  def change
    create_table :form_images do |t|
      t.string :name
      t.string :text
      t.text :image

      t.timestamps
    end
  end
end
