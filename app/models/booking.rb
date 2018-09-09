class Booking < ApplicationRecord
  belongs_to :service
  has_many :clients, inverse_of: :booking, dependent: :destroy

  accepts_nested_attributes_for :clients 
end
