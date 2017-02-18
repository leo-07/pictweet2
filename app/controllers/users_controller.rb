class UsersController < ApplicationController
	def show
		@nickname = currnet_user.nickname
		@tweets = current_user.tweets.page(params[:page]).order('created_at DESC')
end
