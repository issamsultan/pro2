class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model

  attr_accessible :email, :password, :password_confirmation, :remember_me, :image, :remote_image_url, :name

  # attr_accessible :title, :body

  mount_uploader :image, ImageUploader
  
  #Turns users into voters
  acts_as_voter 

  has_many :photos


def role?(role)
  self.role.to_s == role.to_s
end

before_validation :set_default_role

private
def set_default_role
  self.role ||= :registered
end
end
