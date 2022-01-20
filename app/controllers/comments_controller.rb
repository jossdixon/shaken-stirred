class CommentsController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @comment = Comment.new(comment_params)
    @comment.cocktail = @cocktail
    if @comment.save
      redirect_to cocktail_path(@cocktail, anchor: "comment-#{@comment.id}")
    else
      render 'cocktails/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
