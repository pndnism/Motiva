class UsersController < ApplicationController
  def index
  end

  def new
  	render :layout  => nil
  end

  def create
  	@user = User.new(
  		first_name: params[:first_name], 
  		last_name: params[:last_name],
  		user_name: params[:user_name],
  		mail: params[:mail],
  		password: params[:password])
  	@user.save
  	redirect_to("/top")
  end

end
