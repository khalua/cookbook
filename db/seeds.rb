Book.delete_all
Recipe.delete_all
Ingredient.delete_all

b1 = Book.create(:title => 'How to Cook Everything', :cuisine => 'Mixed', :chef => 'Mark Bittman', :image => 'http://www.aolcdn.com/photogalleryassets/aisledash/937074/how-to-cook-everything-490ac092710.jpg' )

r1 = Recipe.create(:name => 'Scrambled Eggs', :course => 'Breakfast', :cooktime => 15 ,:servingsize => 2 , :instructions => 'Crack Eggs, and cook', :image => 'http://img.foodnetwork.com/FOOD/2003/09/29/pa1a06_scrambled_eggs_lg.jpg')
r2 = Recipe.create(:name => 'Roast Chicken', :course => 'Dinner', :cooktime => 90 ,:servingsize => 4 , :instructions => 'Salt and season the chicken, stick it in the over, and party', :image => 'http://www.simplyrecipes.com/wp-content/uploads/2010/03/kellers-roast-chicken.jpg?ea6e46')
r3 = Recipe.create(:name => 'Tuna Casserole', :course => 'Dinner', :cooktime => 60 ,:servingsize => 4, :instructions => 'Chop some shit up, and stick it in the over', :image => 'http://pinchmysalt.com/wp-content/uploads/2008/09/img_0424-version-2.jpg')

i1 = Ingredient.create(:name => 'Chicken', :measurement => '1 whole', :cost => 15.95, :image => 'http://www.hospitalityinfocentre.co.uk/Poultry/Images/raw-chicken.jpg')
i2 = Ingredient.create(:name => 'Egg', :measurement => '6', :cost => 2.49, :image => 'http://i-cdn.apartmenttherapy.com/uimages/kitchen/2008_03_26-EggFreshness.jpg')
i3 = Ingredient.create(:name => 'Tuna', :measurement => '2 cans', :cost => 5.75, :image => 'http://fooddrive.metrocarering.org/image/cache/data/starkist_tuna-500x500.jpg')
i4 = Ingredient.create(:name => 'Cheddar cheese', :measurement => '1 cup', :cost => 6, :image => 'http://i.telegraph.co.uk/multimedia/archive/01238/cheese700_1238272c.jpg')
i5 = Ingredient.create(:name => 'Potatoes', :measurement => '4', :cost => 3.25, :image => 'http://static.ddmcdn.com/gif/potatoes-1.jpg')
i6 = Ingredient.create(:name => 'Carrots', :measurement => '6', :cost => 2.75, :image => 'http://grasshoppersdistribution.com/wp-content/uploads/2012/10/carrots.jpg')

b1.recipes = [r1, r2]
b1.recipes << r3

r1.ingredients = [i2, i4, i6]
r2.ingredients = [i1, i5, i6]
r3.ingredients = [i3,i4, i6]