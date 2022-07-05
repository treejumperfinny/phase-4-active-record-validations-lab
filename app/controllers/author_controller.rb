class AuthorController < ApplicationController
    
    def index 
        render json: Author.all
    end

    def show
        render json: Author.find_by(id: params[:id])
    end

    def create 
        author = Author.create(author_params)
        render json: author, status: :created
    end

    private 

    def author_params
        params.permit(:name, :phone_number)
    end
end
