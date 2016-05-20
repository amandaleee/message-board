class MessagesController < ApplicationController
	def index
		@messages = Message.all
	end

	def new 
		@message = Message.new
	end

	def create
		Message.create(message_params)
		redirect_to message_path
	end

	private
	def message_params
		params.require(:message).permit(:title, :description)
	end
end
