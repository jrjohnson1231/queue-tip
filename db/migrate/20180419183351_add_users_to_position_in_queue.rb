class AddUsersToPositionInQueue < ActiveRecord::Migration[5.1]
  def change
    add_reference :position_in_queues, :user, foreign_key: true
  end
end
