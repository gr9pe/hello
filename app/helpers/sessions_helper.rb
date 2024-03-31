
module SessionsHelper
    def log_in(user)
        session[:p_user_id] = user.p_user_id
    end
    def current_user
        if session[:p_user_id]
          @current_user ||= PUser.find_by(p_user_id: session[:p_user_id])
        end
    end
    def current_user?(user)
        user == current_user
    end
    def logged_in?
        !current_user.nil?
    end
    def log_out
        session.delete(:p_user_id)
        @current_user = nil
    end
end