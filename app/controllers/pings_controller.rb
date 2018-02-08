class PingsController < ApplicationController
	def index
		@pings = Ping.where(:to => current_user.email)
	end

	def new
		@ping = Ping.new
	end
	
	def create
		@ping = Ping.new(ping_params)
		if @ping.save
	      redirect_to pings_path, :notice=>"Message sent!"
	    else
	      render "new"
	    end
	end

	def destroy
		@ping = Ping.find(params[:id])
		@ping.destroy
		redirect_to pings_path, :notice=>"Your message has been Deleted!"
	end

	private

 	def ping_params
    	params.require(:ping).permit(:to, :from, :message)
  	end

	def edit

	end

	def update

	end

	def show
		@pings = Ping.all
	end

end
