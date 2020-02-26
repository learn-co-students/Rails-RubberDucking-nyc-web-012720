class Student < ApplicationRecord
    has_many :ducks, dependent: :destroy
    validates :name, presence: true
    validates :mod, numericality: {greater_than: 0, less_than: 6, only_integer: true}
end
