class Board < ActiveRecord::Base
  has_many :posts
  validates :name, :presence => true
  attr_accessible :name
end
