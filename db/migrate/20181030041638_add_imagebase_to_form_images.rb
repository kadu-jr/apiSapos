class AddImagebaseToFormImages < ActiveRecord::Migration[5.2]
  def change
    add_column :form_images, :imagebase, :text
  end
end
