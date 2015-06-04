require_relative 'cooking_classes'

def recipes
  [
    {
    name: "Roasted Brussels Sprouts",
    ingredients: [
        Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
        Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
        Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
        Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
    ],
    instructions: [
        "Preheat oven to 400 degrees F.",
        "Cut off the brown ends of the Brussels sprouts.",
        "Pull off any yellow outer leaves.",
        "Mix them in a bowl with the olive oil, salt and pepper.",
        "Pour them on a sheet pan and roast for 35 to 40 minutes.",
        "They should be until crisp on the outside and tender on the inside.",
        "Shake the pan from time to time to brown the sprouts evenly.",
        "Sprinkle with more kosher salt ( I like these salty like French fries).",
        "Serve and enjoy!"
        ]
    },

    {
      name: "Molten Spiced Taza Chocolate Cake",
      ingredients: [
        Ingredient.new(4.0, "oz", "70% Taza Stone Ground Chocolate"),
        Ingredient.new(0.5, "cup (1 stick)", "unsalted butter"),
        Ingredient.new(1.0, "tbsp", "Cabernet Sauvignon (or other red wine)"),
        Ingredient.new(2.0, "tsp", "Taza Chocolate Mexicano Extract"),
        Ingredient.new(1.0, "cup", "confectioners sugar"),
        Ingredient.new(2.0, "", "eggs"),
        Ingredient.new(1.0, "", "egg yolk"),
        Ingredient.new(6.0, "tbsp", "flour"),
        Ingredient.new(0.25, "tsp", "cinnamon"),
        Ingredient.new(0.25, "tsp", "ground ginger")
      ],
      instructions: [
        "Pre-heat oven to 425°F.",
        "Butter four custard or souffle dishes. Place on a baking sheet.",
        "Heat chocolate and butter in a double boiler until completely melted, stirring often. Remove from heat.",
        "Stir in wine, vanilla extract, and sugar until blended. Whisk in eggs and yolk. Stir in remaining ingredients.",
        "Spoon evenly into prepared dishes and bake for 15 minutes or until sides are firm but centers are soft. Let stand for 1 minute. Loosen edges with knife and invert onto serving plates.",
        "Sprinkle with confectioners sugar, if desired."
      ]
    },

    {
      name: "Baked Chocolate Tofu Scramble",
      ingredients: [
        Ingredient.new(4.0, "oz", "chocolate"),
        Ingredient.new(0.5, "cup", "milk"),
        Ingredient.new(1.0, "tbsp", "wine"),
        Ingredient.new(2.0, "tsp", "whiskey"),
        Ingredient.new(1.0, "cup", "tofu"),
        Ingredient.new(2.0, "", "eggs"),
      ],
      instructions: [
        "Pre-heat oven to 375°F.",
        "Whisk everything together.",
        "Spoon into cupcake tins and bake for 30 minutes.",
        "Let cool.",
        "Put on your brave face and try it!"
      ]
    }
  ]
end
