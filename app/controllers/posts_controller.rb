class PostsController < ApplicationController
    
    def index 
        render json: Post.all
    end

    def show
        render json: Post.find_by(id: params[:id])
    end

    def create 
        post = Post.create(post_params)
        render json: post, status: :created
    end 

    def update
        post = Post.find_by(id: params[:id])
        if post 
          post.update(post_params)
          render json: post
        else
          render json: {error: "OPE. Post not here buddy."}, staus: :not_found
        end  
      end
        
      def destroy
        post = Post.find_by(id: params[:id])
        if post 
          post.destroy
          head :no_content
        else
          render json: {error: "Post not here..."}, staus: :not_found
        end

    private

    def post_params
        params.permit(:title, :content, :summary, :category)
    end
end
