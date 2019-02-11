class CreateTravelTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :travel_types do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :destination, foreign_key: true
      t.string :mode

      t.timestamps
    end
  end
end
