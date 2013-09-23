class User < ActiveRecord::Base
  belongs_to :board
  has_many :schedules
  attr_accessible :board_id, :name
end
