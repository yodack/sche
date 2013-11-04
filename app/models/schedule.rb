class Schedule < ActiveRecord::Base
  belongs_to :user
  belongs_to :board_when
  attr_accessible :board_when_id, :free, :user_id
end
