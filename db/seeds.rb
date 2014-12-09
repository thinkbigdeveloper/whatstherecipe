# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

recipes = Recipe.create([{user_id: 1, title: 'Dave\'s Angry Chicken', img_URL: 'http://www.whatstherecipe.com/dishes/1', cuisine: 'American', dish_type: 'Entree', ingredients: '1 Whole Chicken, Bullseye BBQ Sauce, Salt, Pepper, Lemon Juice', cooking_steps: '1. Put all seasonings in a Ziploc bag.  2. Shake bag to mix seasonings.  3. Put in chicken (with skin), refrigerate for min. 3hrs.  4. Set grill to MEDIUM.  5. Fire up the grill and get that chicken on there!  6. Cook.  7. Eat it.', restaurant: 'Dave\'s Place'}, {user_id: 1, title: 'Meatloaf ala Dave', img_URL: 'http://www.whatstherecipe.com/dishes/2', cuisine: 'American', dish_type: 'Entree', ingredients: '1lb Ground Beef, 1/2lb Ground Pork, 1/4 cup Onion Flakes, Salt, Pepper', cooking_steps: '1. Mix all ingredients in small bowl.  2. Transfer to bread pan.  3. Heat oven to 375 degrees.  4. Cook meatloaf for 25min.  5. Eat it.', restaurant: 'Dave\'s Kitchen'}])
