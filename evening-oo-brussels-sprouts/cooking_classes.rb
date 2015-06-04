class Ingredient
  def initialize(quantity, unit, name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def summary
    "#{@quantity} #{@unit} #{@name}"
  end
end

class Recipe
  def initialize(name, instructions, ingredients)
    @name = name
    @instructions = instructions
    @ingredients = []
    ingredients.each do |ingredient|
      @ingredients << ingredient.summary
    end
  end

  def ingredient_list
    list = ""
    @ingredients.each do |ingredient|
      list += "- #{ingredient}\n"
    end
    list
  end

  def instructions_list
    list = ""
    number = 1
    @instructions.each do |instruction|
      list += "#{number}. #{instruction}\n"
      number += 1
    end
    list
  end

  def summary
<<-RECIPE
Name: #{@name}

Ingredients
#{ingredient_list}
Instructions
#{instructions_list}
RECIPE
  end
end
