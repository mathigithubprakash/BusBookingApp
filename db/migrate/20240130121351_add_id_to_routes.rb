class AddIdToRoutes < ActiveRecord::Migration[7.1]
  def change
    add_index :routes, :id, unique: true
  end
end
