class Dojo < ApplicationRecord
    has_many :Ninjas, dependent: :destroy
    validates :name, :city, :state, presence: true
    validates :state, length: { is: 2 }
end
