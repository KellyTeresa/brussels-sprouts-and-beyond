require 'erb'

# Output with Ruby

recipe = {
  name: "Roasted Brussel Sprouts",
  ingredients: [
    "1 1/2 pounds Brussels sprouts",
    "3 tablespoons good olive oil",
    "3/4 teaspoon kosher salt",
    "1/2 teaspoon freshly ground black pepper"
    ],
  directions: [
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
  }

puts "\##{"="*(recipe[:name].length + 2)}\#"
puts "\# #{recipe[:name]} \#"
puts "\##{"="*(recipe[:name].length + 2)}\#"

puts "\nIngredients"
puts "#{"-"*"Ingredients".length}\n\n"

puts recipe[:ingredients]

puts "\nDirections"
puts "#{"-"*"Directions".length}"

recipe[:directions].each do |item|
  puts "\n#{recipe[:directions].index(item) + 1}. #{item}"

end


# Output with ERB

puts "\n\nNow for ERB! \n\n"

display_template = "\##{"="*(recipe[:name].length + 2)}\#
\# <%= recipe[:name] %> \#
\##{"="*(recipe[:name].length + 2)}\#

Ingredients
#{"-"*"Ingredients".length}
<% recipe[:ingredients].each do |item| %>
<%= item %> <% end %>

Directions
#{"-"*"Directions".length}
<% recipe[:directions].each do |step| %>
<%= (recipe[:directions].index(step) + 1) %>. <%= step %>
<% end %>"

template = ERB.new display_template

puts template.result
