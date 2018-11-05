class Query < ApplicationRecord

  has_many :params, class_name: 'QueryParam', dependent: :destroy

end
