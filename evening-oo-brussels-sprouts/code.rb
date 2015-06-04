require_relative 'cooking_classes'
require_relative 'recipe_list'

recipes.each do |recipe_info|
  recipe = Recipe.new(recipe_info[:name], recipe_info[:instructions], recipe_info[:ingredients])
  puts recipe.summary
end
