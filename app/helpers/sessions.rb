helpers do

  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def if_user
    if current_user
      yield current_user
    else
      erb :unauthorized
    end
  end

end
