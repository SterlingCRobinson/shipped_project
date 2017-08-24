class UsersController < ApplicationController

end


def show

end


def  new
  @user.new

end


def create
  @user = User.new(user_params)

end

def edit
 @user=User.find_by_id(params[:id])
end

def update
@user=User.find_by_id(params[:id])
@user.update(user_params)
end

private

 def user_params
    params.require(:user).permit(:name,:email, :id)
  end
