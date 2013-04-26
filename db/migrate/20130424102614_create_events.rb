class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_details
      t.string :event_venue
      t.time :event_time
      t.date :event_date

      t.timestamps
    end
  end
end
