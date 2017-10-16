class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #  confirm if not a machine, lock user if them set logins wrongs, time that user stay logged in your pc, face/g+/twitter
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
