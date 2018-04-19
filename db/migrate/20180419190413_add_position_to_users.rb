class AddPositionToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :position_in_queue, foreign_key: true
  end
end
