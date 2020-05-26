class CommentsController < ApplicationController


    def index
        comments = Comment.where(ownership_id: params[:id])
        render json: comments
    end
    
    def create
        comment = Comment.create(user_id: params[:user], ownership_id: params[:ownership], comment: params[:comment])
        render json: comment
    end 

    def destroy
        Comment.find(params[:id]).destroy
        render json: "comment deleted!"

    end 

end
