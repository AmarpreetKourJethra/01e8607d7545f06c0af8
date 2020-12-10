class Api::TypeheadsController < ApplicationController
    def index
        search = params[:query]
        
        @users = Api::User.where(firstname: search).or(lastname: search).or(email: search)

        render json:@users
    end



  end
  