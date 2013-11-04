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
end
