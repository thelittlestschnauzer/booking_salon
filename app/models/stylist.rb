class Stylist < ApplicationRecord
  has_many :services, class_name: 'Service', foreign_key: 'from_stylist_id'

  
end
