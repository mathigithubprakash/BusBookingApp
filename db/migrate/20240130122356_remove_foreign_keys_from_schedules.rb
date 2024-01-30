class RemoveForeignKeysFromSchedules < ActiveRecord::Migration[7.1]
  def change
    remove_reference :schedules, :bus, index: true, foreign_key: true
    remove_reference :schedules, :route, index: true, foreign_key: true
  end
end
