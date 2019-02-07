# frozen_string_literal: true

module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
      logger.add_tags 'ActionCable', current_user.email
    end

    protected

    def find_verified_user
      begin
        token = request.headers[:HTTP_SEC_WEBSOCKET_PROTOCOL].split(' ').last
        decoded_token = JWT.decode(token, ENV['DEVISE_JWT_SECRET_KEY'])
        current_user = User.find(decoded_token[0]["sub"])
        
        if (current_user)
          current_user
        else
          reject_unauthorized_connection
        end
      rescue
        reject_unauthorized_connection  
      end
    end
  end
end
