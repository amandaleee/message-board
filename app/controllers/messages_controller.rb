class MessagesController < ApplicationController
	def index
		@messages = Message.all
	end

	def new 
		@message = Message.new
	end

	def create
		Message.create(message_params)
		redirect_to messages_path
	end

	def edit
		@message = Message.find(params[:id])
	end

	def update
		@message = Message.find(params[:id])
		@message.update_attributes(message_params)
		redirect_to messages_path
	end

	def destroy
		@message = Message.find(params[:id])
		@message.destroy
		redirect_to messages_path
	end


	private
	def message_params
		params.require(:message).permit(:title, :description)
	end
end
