class UsersController < ApplicationController
  # ユーザーのidに紐づいて、購入した商品が検索される
  # 現在ログインしているユーザーのidと同じidのカラムを探す
  def show
    # @items = Item.where(user_id: current_user.id)
    @user = User.find(current_user.id)
  end








end