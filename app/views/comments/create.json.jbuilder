if @comment.persisted?
  json.form json.partial!
  ("comments/form.html.erb", cocktail: @cocktail, comment: Comment.new)
  json.inserted_item json.partial!("cocktails/comment.html.erb", comment: @comment)
else
  json.form json.partial!("comments/form.html.erb", cocktail: @cocktail, comment: @comment)
end
