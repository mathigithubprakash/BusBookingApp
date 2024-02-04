class Bus < ApplicationRecord
    has_many :tickets
    has_many :schedules
    has_many :routes, through: :schedules
    validates :name, presence: true
end
