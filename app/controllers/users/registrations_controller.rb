class Users::RegistrationsController < Devise::RegistrationsController
    
    def after_sign_up_path_for(resource)
      user_index_path
    end

    def after_inactive_sign_up_path_for(resource)
      new_user_sessions_path
    end


end 