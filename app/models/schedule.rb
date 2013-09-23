class Schedule < ActiveRecord::Base
  belongs_to :user
  attr_accessible :board_when_id, :free, :user_id
end
