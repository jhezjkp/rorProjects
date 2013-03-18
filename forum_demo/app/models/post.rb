class Post < ActiveRecord::Base
  belongs_to :board, :counter_cache => true
  belongs_to :user
  has_many :replies
  has_attached_file :excerpt_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates :title, :presence => true, :length => { :minimum => 5, :maximum => 255 }
  validates :content, :presence => true, :length => { :minimum => 5 }
  #default_scope :order => 'created_at DESC'
  scope :recent, :order => 'updated_at DESC'
  attr_accessible :content, :title, :excerpt_image
end
