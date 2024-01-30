class CreateSchedules < ActiveRecord::Migration[7.1]
  def change
    create_table :schedules do |t|
      t.references :bus, null: false, foreign_key: true
      t.datetime :departure_time
      t.integer :duration

      t.timestamps
    end
  end
end
