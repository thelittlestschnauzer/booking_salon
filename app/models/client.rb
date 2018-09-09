class Client < ApplicationRecord
  belongs_to :booking, inverse_of: :clients

  
end
