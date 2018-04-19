class CreatePositionInQueues < ActiveRecord::Migration[5.1]
  def change
    create_table :position_in_queues do |t|

      t.timestamps
    end
  end
end
