class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :user
      t.references :board_when
      t.boolean :free

      t.timestamps
    end
  end
end
