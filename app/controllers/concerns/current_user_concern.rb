module CurrentUserConcern
  extend ActiveSupport::Concern
  #override methods, devise method 
  def current_user
    super || guest_user
    #super charges the normal stuff
    #create a guest user
  end

  def guest_user
  	OpenStruct.new(name: "Guest User", 
  				   first_name: "Guest",
  				   last_name: "User", 
  				   email: "guest@example.com")
  end
end