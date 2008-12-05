class UsersController < ApplicationController
  def show
    @user = User.find params[:id]
    respond_to do |type|
      type.html
      type.xml {render :xml => @user.to_xml}
    end
  end

  def update
    @user = User.find params[:id]
    @user.update_attributes!(params[:user])
    redirect_to @user, :status => :see_other
  end
end