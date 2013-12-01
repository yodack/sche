class BoardWhen < ActiveRecord::Base
  belongs_to :board
  has_many :schedules
  attr_accessible :board, :date

  def free_count
    @free_count = 0
    schedules.each do |schedule|
      @free_count = @free_count + 1 if schedule.free
    end
    @free_count
  end

  def self.board_summary(board_id)
    summary = {}
    board_whens = BoardWhen.find_all_by_board_id(board_id)

    board_whens.each do |board_when|
      schedules = Schedule.find(:all, conditions: {board_when_id: board_when.id, free: true})

      usernames = [] 
      schedules.each do |schedule|
        usernames << schedule.user.name
      end

      summary[board_when.date] = usernames.join(", ")
    end

    summary
  end
end
