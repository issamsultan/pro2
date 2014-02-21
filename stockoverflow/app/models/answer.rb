class Answer < ActiveRecord::Base
  attr_accessible :content, :flag, :photo_id, :user_id, :vote
end
