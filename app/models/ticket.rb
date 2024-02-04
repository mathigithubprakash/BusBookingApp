class Ticket < ApplicationRecord
  belongs_to :bus

  validates :number, presence: true, uniqueness: { scope: :bus_id }
  validates :status, inclusion: { in: %w[available booked] }

  scope :available, -> { where(status: 'available') }
end
