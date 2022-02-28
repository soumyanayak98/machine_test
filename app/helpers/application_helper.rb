module ApplicationHelper

    def current_user
        User.find(session[:user_id]) if session[:user_id] != nil
    end

    def is_admin?
        current_user.admin
    end
end
