class Api::TypeheadsController < ApplicationController
    def index
        search = params[:query]
        
        @users = Api::User.where("firstname LIKE ?", "%" + search + "%")

        render json:@users
    end


  end
  