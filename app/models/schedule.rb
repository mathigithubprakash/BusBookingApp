class Schedule < ApplicationRecord
  belongs_to :bus
  belongs_to :route
  scope :by_source_and_destination, ->(source, destination) { joins(:route).where("routes.source = ? AND routes.destination = ?", source, destination) }

end
