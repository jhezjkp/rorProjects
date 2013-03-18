class Reply < ActiveRecord::Base
  belongs_to :user
  belongs_to :post, :counter_cache => true
  attr_accessible :content, :post_id, :user_id

  def user
    User.find(user_id)
  end
end
