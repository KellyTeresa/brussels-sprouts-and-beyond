require_relative 'safe_foods'
require 'pry'

class Ingredient
  attr_reader :quantity, :unit, :name
  def initialize(quantity, unit, name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def summary
    "#{@quantity} #{@unit} #{@name}"
  end

  def valid?
    safe_foods.include?(@name.downcase)
  end

  def self.parse(string)
    split_ingredient = string.split
    if split_ingredient.count < 2
      return "Error, cannot parse ingredient."
    elsif split_ingredient.count == 2
      quantity = split_ingredient.shift.to_f
      unit = ""
      name = split_ingredient[0]
    else
      quantity = split_ingredient.shift.to_f
      unit = split_ingredient.shift
      name = split_ingredient.join(" ")
    end
    Ingredient.new(quantity, unit, name)
  end
end

class Recipe
  attr_reader :name
  def initialize(name, instructions, ingredients)
    @name = name
    @instructions = instructions
    @ingredients = ingredients
  end

  def ingredient_list
    ingredients = []
    @ingredients.each do |ingredient|
      ingredients << ingredient.summary
    end
    list = ""
    ingredients.each do |ingredient|
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

  def safe_for_client?
    ingredient_safety = []
    @ingredients.each do |ingredient|
      ingredient_safety << ingredient.valid?
    end
    if ingredient_safety.include?(false)
      "No."
    else
      "Yes."
    end
  end
end
