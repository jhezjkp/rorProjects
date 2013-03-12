class Post < ActiveRecord::Base
  has_one :board
  attr_accessible :content, :title
end
