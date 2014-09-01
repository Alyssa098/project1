get "/recipes/:recipe_id/reviews" do
  @recipe = Recipe.find(params[:recipe_id])
  @review = @recipe.reviews
  erb :"reviews/reviews_index"
end

get "/recipes/:recipe_id/reviews/new" do
  @recipe = Recipe.find(params[:recipe_id])
  erb :"reviews/reviews_new"
end

post "/recipes/:recipe_id/reviews/create" do
  @recipe = Recipe.find(params[:recipe_id])
  @review = Review.create({recipe_id: params[:recipe_id], text: params[:text]})
  erb :"reviews/reviews_create"
end

get "/recipes/:recipe_id/reviews/:review_id/edit" do
  @recipe = Recipe.find(params[:recipe_id])
  @review = Review.find(params[:review_id])
  erb :"reviews/reviews_edit"
end

post "/recipes/:recipe_id/reviews/:review_id/update" do
  @recipe = Recipe.find(params[:recipe_id])
  @review = Review.find(params[:review_id])
  @review.update_attributes({text: params[:text]})
  erb :"reviews/reviews_update"
end

get "/recipes/:recipe_id/reviews/:review_id/delete" do
  @recipe = Recipe.find(params[:recipe_id])
  Review.find(params[:review_id]).delete
  erb :"reviews/reviews_delete"
end
