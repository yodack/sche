class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.date :date
      t.boolean :holiday

      t.timestamps
    end
  end
end
