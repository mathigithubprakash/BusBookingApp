class AddForeignKeysToSchedules < ActiveRecord::Migration[7.1]
  def change
    add_reference :schedules, :route, null: false, foreign_key: true unless column_exists?(:schedules, :route_id)
  end
end
