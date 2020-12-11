class Api::TypeheadsController < ApplicationController
    def index
        search = params[:query]
        
        @users = Api::User.where("firstname" => /.*#{search}.*/i).or("lastname" => /.*#{search}.*/i).or("email" => /.*#{search}.*/i)


        render json:@users
    end



  end
  