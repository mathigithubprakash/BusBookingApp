class AddBusIdAndRouteIdToSchedules < ActiveRecord::Migration[7.1]
  def change
    add_reference :schedules, :bus, null: false, foreign_key: true
    add_reference :schedules, :route, null: false, foreign_key: true
  end
end
