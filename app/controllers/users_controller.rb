class UsersController < ApplicationController

  def index
    @users = User.all
    @dogs = Dog.all
  end

  def new
    @user = User.new
    # this next line is how we determine how many fields to create
    3.times { @user.dogs.build}
  end

  def show
  end

  def create
    @user = User.create(user_params)
    # I don't know how to create the dogs from within the nested form
    # but it's 11:30 and i've been stuck for an hour
    # i'm making max do this
    redirect_to action: "index"
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    # our params are also a bit different since we are taking in
    # an array of information through our dog_attributes
    params.require(:user).permit(:name, :hobby, dogs_attributes:
    [:id, :name, :iscute] )
  end



end
