module CurrentUserConcern
  extend ActiveSupport::Concern
  #override methods, devise method 
  def current_user
    super || guest_user
    #super charges the normal stuff
    #create a guest user
  end

  def guest_user
  	guest = GuestUser.new
    guest.first_name = "Guest"
    guest.name = "Guest User"
    guest.last_name = "User"
    guest.email = "example@user.com"
    guest
  end
end