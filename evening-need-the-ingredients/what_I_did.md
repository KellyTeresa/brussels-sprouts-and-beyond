## What I did with telnet & curl, plus other parts of my process.

### First:
I read the instructions and realized I needed to know what is already on the page before I can add anything with telnet properly. I looked at the contents of the challenge file so I would know the format to send my POST requests in.

### Second:
I ran `ruby server.rb` and checked to see what was already at `localhost:4567`. I saw:
> ###Roasted Brussel Sprouts
>
> ####Ingredients
>
> - 1 1/2 pounds Brussels sprouts

### Third:
This meant all I needed to do to complete the challenge is add the remaining 3 ingredients with telnet. Interestingly, I didn't see where, specifically, the ingredient list was given a bullet point. Since `server.rb` is reading from `ingredients.txt` and the one existing entry (1 1/2 pounds Brussels sprouts) is simply by itself, I assumed that I would not need to send anything along with the ingredient information in order for it to become part of the bulleted list.

### Fourth:
I opened a telnet connection to my server with `telnet localhost 4567`.
From the `server.rb` file, I knew that POST requests should be sent to `/ingredients` with the format `?ingredient=the%20new%20ingredient`.
However I got a lot of errors, and after googling, asking other Launchers, and reading Andrew's post on Slack I still couldn't get it to work. I decided to try curl.

### Fifth:
A few error messages later, I ended up with the command:
```curl -d "ingredient=3%20tablespoons%20good%20olive%20oil" localhost:4567/ingredients```
It worked!

### Sixth:
Only two ingredients left to add. Two quick command line entries of:
```
curl -d "ingredient=3%2F4%20teaspoon%20kosher%20salt" localhost:4567/ingredients
curl -d "ingredient=1%2F2%20teaspoon%20freshy%20ground%20black%20pepper" localhost:4567/ingredients
```
And I was done!
