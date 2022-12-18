class Address < ApplicationRecord
  belongs_to :people

  validates :street, presence: true
  validates :city, presence: true
  
end
