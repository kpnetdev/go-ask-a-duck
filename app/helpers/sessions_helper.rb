module SessionsHelper

  def current_user
    User.find(sessions[:user_id])
  end
end