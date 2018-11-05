class CreateFormTemplatesFormImagesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :form_templates, :form_images do |t|

    end
  end
end
