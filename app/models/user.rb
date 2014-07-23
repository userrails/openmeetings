class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :new_password, :firstname, :lastname, :username, :email, :password, :password_confirmation, :remember_me, :confirmation_token
  attr_accessor :new_password
  
  after_create :make_backup
  
  def make_backup
    OpenMeeting.create_user(self)
  end
  
end