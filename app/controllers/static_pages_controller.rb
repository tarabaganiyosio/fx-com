class StaticPagesController < ApplicationController
  def home
    @current_user ||= User.find_by(id: session[:user_id])
    @writes = Write.all
    @boards = Board.all
    @board = Board.new
  end
end
