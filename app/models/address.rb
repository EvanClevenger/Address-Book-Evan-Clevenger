class Address < ApplicationRecord
  belongs_to :people, inverse_of: :address

  validates :street, presence: true
  validates :city, presence: true
  
end
