class Post < ApplicationRecord
  before_save :date_published_post 
	
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true
  
  def date_published_post
   
   if  self.published_at.nil?
  	self.published_at = Time.now
  end
	
  end
 
end
