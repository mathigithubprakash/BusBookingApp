class AddBusIdToTickets < ActiveRecord::Migration[7.1]
  def change
    add_column :tickets, :bus_id, :integer
  end
end
