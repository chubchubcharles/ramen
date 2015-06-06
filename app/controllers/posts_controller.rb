class PostsController < ApplicationController
	# index

	def new 
	end

  def show
  	@post = Post.find(params[:id]) #finding in model
  end

  def new
  end

  def edit
  end

	def create
		# after 'posts#new' and submit button is created, fields of form sent as parameters
		# render plain: params[:post].inspect
		# puts "Here are the parameters passed in the field: #{params}"
		# prevents whitelisting, require post to have title and text as attributes
		@post = Post.new(post_params) # post_params is a method to make sure valid use of create/update

		@post.save
		redirect_to @post
	end

	def update
	end

	def destroy
	end

	private
		def post_params
			params.require(:posts).permit(:title, :text)
		end
end
