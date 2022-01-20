if @comment.persisted?
  json.form json.partial!
  ("shared/_comment_form.html.erb", cocktail: @cocktail, comment: Comment.new)
  json.inserted_item json.partial!("shared/comment.html.erb", comment: @comment)
else
  json.form json.partial!("shared/_comment_form.html.erb", cocktail: @cocktail, comment: @comment)
end
