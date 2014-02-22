class Answer < ActiveRecord::Base
  attr_accessible :content, :flag, :photo_id, :user_id, :vote
  belongs_to :photo
  belongs_to :user
end
