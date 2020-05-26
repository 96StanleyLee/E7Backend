class UsersController < ApplicationController

  require 'stream-chat'

    def create
        user = User.create(username: params[:username], password: params[:password])
        
        if user.valid?
          client = StreamChat::Client.new(api_key=ENV["STREAM_KEY"], api_secret=ENV["STREAM_SECET"])
          token = client.create_token(user[:username])
          user.update(user_token: token)
          session[:user_id] = user.id
          render json: user, status: :created
        else
          render json: { errors: user.errors.full_messages }, status: :bad_request
        end
      end


      
end
