class Board < ActiveRecord::Base
  has_many :users
  has_many :board_whens
  attr_accessible :name, :what, :where

  def first_candidate
    candidates = get_candidate
    candidates.first.date
  end

  def second_candidate
    candidates = get_candidate
    candidates.second.date
  end

  def third_candidate
    candidates = get_candidate
    candidates.third.date
  end

  def get_candidate
    board_whens.sort!{|a, b| b.free_count <=> a.free_count}
    board_whens
  end
end
