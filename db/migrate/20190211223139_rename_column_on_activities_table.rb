class RenameColumnOnActivitiesTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :activities, :ActivityType_id, :activity_type_id
  end
end
