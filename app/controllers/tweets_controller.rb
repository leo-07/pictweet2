class TweetsController < ApplicationController
	before_action :move_to_index, except: :index
	def index
		@tweets = Tweet.all.order("id DESC").page(params[:page]).per(5)
	end

	def new
	end

	def create
		Tweet.create(text:tweets_params[:text],image:tweets_params[:image],name:tweets_params[:name])
	end

	private
	def tweets_params
		params.permit(:text,:image,:name)
	end

	def move_to_index
		redirect_to action: :index unless user_signed_in?
	end

end
