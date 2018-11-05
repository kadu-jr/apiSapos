class Form < ApplicationRecord
  belongs_to :template, class_name: "FormTemplate"
  belongs_to :query
end
