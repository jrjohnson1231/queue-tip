class AddDescriptionToPositionInQueue < ActiveRecord::Migration[5.1]
  def change
    add_column :position_in_queues, :description, :string
  end
end
