class CommentsController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @comment = Comment.new(comment_params)
    @comment.cocktail = @cocktail

    respond_to do |format|
      if @comment.save
        format.html { redirect_to cocktail_path(@cocktail) }
        format.json
        # redirect_to cocktail_path(@cocktail, anchor: "comment-#{@comment.id}")
      else
        format.html { render 'cocktails/show' }
        format.json
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
