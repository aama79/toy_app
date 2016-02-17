class Micropost < ActiveRecord::Base
	belongs_to :user
	validates :content, presence: true, length: { maximum: 250 }
	validates :user_id, presence: true
end
