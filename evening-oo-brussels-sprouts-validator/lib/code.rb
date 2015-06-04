require_relative 'cooking_classes'
require_relative 'recipe_list'
require 'pry'

def print_recipes
  recipes.each do |recipe_info|
    recipe = Recipe.new(recipe_info[:name], recipe_info[:instructions], recipe_info[:ingredients])
    puts recipe.summary
  end
end

def check_safety
  recipes.each do |recipe_info|
    recipe = Recipe.new(recipe_info[:name],
                        recipe_info[:instructions],
                        recipe_info[:ingredients])
    puts "* Is \"#{recipe.name}\" safe for the client? #{recipe.safe_for_client?}"
  end
end

puts "Here are all the recipes we have!"
print_recipes

puts "We have a client with very specific dietary needs."
check_safety
