class CommentsController < ApplicationController

  def create
    user = User.find(params[:user_id])
    @commentables = [user] + user.bills.all
    
    @comment = Comment.create_from_sidebar(params)
  end

end