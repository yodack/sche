class CreateBoardWhens < ActiveRecord::Migration
  def change
    create_table :board_whens do |t|
      t.references :board
      t.date :date

      t.timestamps
    end
  end
end
