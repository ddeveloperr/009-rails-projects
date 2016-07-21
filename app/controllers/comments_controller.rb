class CommentsController < ApplicationController
    def create
      @article = Article.find(params[:article_id])
      @comment = @article.comments.create(comment_params)
      redirect_to articles_path(@article)
    end
    
    def destroy
      # find the correct article
      @article = Article.find(params[:article_id])
      # locate the right comment within
      @comment = @article.comments.find(params[:id])
      # remove it from db
      @comment.destroy
      # back to the show action for the article
      redirect_to article_path(@article)
    end
    
    private
      def comment_params
        params.require(:comment).permit(:commenter, :body)  
      end
end
