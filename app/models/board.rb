class Board < ActiveRecord::Base
  has_many :users
  attr_accessible :name, :what, :where
end
