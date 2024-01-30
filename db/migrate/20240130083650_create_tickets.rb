class CreateTickets < ActiveRecord::Migration[7.1]
  def change
    create_table :tickets do |t|
      t.references :schedule, null: false, foreign_key: true
      t.integer :seat_number
      t.integer :price

      t.timestamps
    end
  end
end
