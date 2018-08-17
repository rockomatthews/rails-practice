class User < ApplicationRecord
    validates :first_name, :last_name, :email_address, :age, presence: true
    validates :age, numericality: true
    validates :first_name, :last_name, length: { in: 2..20 }
    validates_numericality_of :age, greater_than_or_equal_to: 10
    validates_numericality_of :age, less_than: 150
end
