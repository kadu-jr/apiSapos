class ChangeTemplateColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :forms, :form_template_id, :template_id
  end
end
