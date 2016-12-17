#This nested data structure will be based off a restaurant menu I happened to pick up.
#The overall strucutre of the whole menu is to be separated by starters, entrees, and enders.
#Starters will hold appetizers, soups, and salads, entree holds teriyaki and tempura, and enders 
# include desserts and drinks.

#1st step of nested data structures, prepare innermost elements, which happent to be hashes.
#Starter elements
app = {"Edamamae" => 4.5, "Shumai" => 6, "Yakitori" => 6, "Soft shell crab" => 15, "Black cod fish" => 15}

soup_salad = {"Miso Soup" => 2, "Tom Yum" => 5, "Kani Salad" => 7, "Chicken Salad" => 8, "Mushroom Soup"=> 3.5}
#entree elements
teriyaki = {"Tofu Teriyaki" => 12, "Vegetable Teriyaki" => 12, "Beef Teriyaki" => 18, "Chicken Teriyaki" => 14, "Salmon Teriyaki" => 16 }
 
tempura = {"Vegetable Tempura" => 12, "Chicken & Vegetable Tempura" => 16, "Shrimp & Vegetable Tempura" => 17} 
#ender elements
dessert = {"Ice Cream" => 5, "Fried Cheese Cake" => 7, "Banana Spring Roll" => 5 }

drinks = {"Soda" => 2, "Thai Ice Tea" => 3, "Voss" => 7, "Juice" => 3}

#Now that elements have been created, we can create and organize everything into a single menu hash.

menu = { "starters" => [app, soup_salad], "entrees" => [teriyaki, tempura], "enders" => [dessert, drinks]}

#Now, we print the menu

puts menu