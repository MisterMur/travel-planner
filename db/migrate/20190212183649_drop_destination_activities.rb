class DropDestinationActivities < ActiveRecord::Migration[5.2]
  def change
    drop_table :destination_activity_types
    drop_table :activity_types
  end
end
