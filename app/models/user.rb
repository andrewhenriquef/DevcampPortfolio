class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #  confirm if not a machine, lock user if them set logins wrongs, time that user stay logged in your pc, face/g+/twitter
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name

  #virtual attributes
  def first_name
  	self.name.split.first
  end

  def last_name
  	self.name.split.last
  end
end
