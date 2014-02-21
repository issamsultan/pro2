class Album < ActiveRecord::Base
  attr_accessible :description, :title, :photo_ids

  has_many :photos
end
