class Schedule < ActiveRecord::Base
  attr_accessible :board_when_id, :free, :user_id
end
