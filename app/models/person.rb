class Person < ApplicationRecord
    
    has_many :addresses, dependent: :destroy, inverse_of: :Person

    accepts_nested_attributes_for :addresses

end
