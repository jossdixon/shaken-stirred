class CommentsController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @comment = Comment.new(comment_params)
    @comment.cocktail = @cocktail
    if @comment.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/show'
    end
  end

  private

  def cocktail_params
    params.require(:comment).permit(:content)
  end
end
