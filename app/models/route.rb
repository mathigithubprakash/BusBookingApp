class Route < ApplicationRecord
    has_many :schedules
    has_many :buses, through: :schedules
    validates :source, :destination, presence: true
    scope :by_source_and_destination, ->(source, destination) { where(source: source, destination: destination) }
end
