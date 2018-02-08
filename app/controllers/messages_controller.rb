class MymessagesController < ApplicationController
	def index
		@messages = Mymessage.where(:to => current_user.email)
	end

	def new
		@message = Mymessage.new
	end
	
	def create
		@message = Mymessage.new(params[:message])
		@message.save
	end

	def edit

	end

	def update

	end

	def show
		@messages = Mymessage.all
	end

	def destroy

	end
end
