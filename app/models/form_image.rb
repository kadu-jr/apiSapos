class FormImage < ApplicationRecord
  has_and_belongs_to_many  :form_template

  #mount_uploader :image, FormImageUploader
  #has_one_attached :image
  def initialize_dup(other)
    super
    attrib = other.attributes.except("id", "created_at", "updated_at")
    self.assign_attributes(attrib)
  end

  def to_label
    "#{name}"
  end

  def image
    "form_images/#{id}/logo"
  end

end
