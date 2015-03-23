User.create(email: 'test@gmail.com', full_name: "test_user", display_name: "test_user", password: "test", role: 0)
User.create(email: 'test1@gmail.com', full_name: "test_user1", display_name: "test_user1", password: "test", role: 0)
User.create(email: 'admin@gmail.com', full_name: "admin_user", display_name: "admin_user", password: "test", role: 1)

User.create(email: 'demo+rachel@jumpstartlab.com', full_name: "Rachel Warbelow", display_name: "", password: "password", role: 0)
User.create(email: 'demo+jeff@jumpstartlab.com', full_name: "Jeff Casimir", display_name: "j3", password: "password", role: 0)
User.create(email: 'demo+jorge@jumpstartlab.com', full_name: "Jorge Tellez", display_name: "novohispano", password: "password", role: 0)
User.create(email: 'demo+josh@jumpstartlab.com', full_name: "Josh Cheek", display_name: "josh", password: "password", role: 1)

ItemStatus.create(state: "Active")
ItemStatus.create(state: "Retired")

Order.create(user_id: 1, status_id: 1)
Order.create(user_id: 1, status_id: 2)
Order.create(user_id: 2, status_id: 3)

Status.create(state: "Ordered")
Status.create(state: "Paid")
Status.create(state: "Cancelled")
Status.create(state: "Completed")

OrderItem.create(item_id: 1, order_id:1, quantity: 2)

Item.create(title: "Clams", description: "Clams on the half shell broiled in a special blend of clam sauce, bread crumbs, grated parmesan cheese and prosciutto.", price: 4532, item_status_id: 1)
Item.create(title: "Clams Casino", description: "These bite size cakes are a favorite! A nice blend of spices & crab served with my special spicy “cake sauce” and a wedge of lime. We also serve Coconut Crab Cakes with a sweet chili sauce.", price: 4532, item_status_id: 1)
Item.create(title: "Crab Cakes", description: "Two clusters of steamed crab legs, a half pound of steamed shrimp, choose one (steamed oysters, clams or mussels)", price: 4532, item_status_id: 1)
Item.create(title: "Family Style Grilled Platter", description: "Two clusters of steamed crab legs, a half pound of steamed shrimp, choose one (steamed oysters, clams or mussels)", price: 4532, item_status_id: 1)
Item.create(title: "Grilled Seafood Tacos", description: "Authentic-style fish tacos served on corn tortillas, with cabbage, pico de gallo and creamy jalapeno ranch.", price: 4532, item_status_id: 1)
Item.create(title: "Raw Oysters", description: "Seriously....what's there to say? They're uncooked so you have to add spicy sauce for flavor!", price: 4532, item_status_id: 1)
Item.create(title: "Stuffed Crab", description: "Stuffed crab, made with fresh lump crabmeat, onion, and bell pepper, seasoned with Old Bay and Cajun seasoning.", price: 4532, item_status_id: 1)
Item.create(title: "Shrimp Crab Bite", description: "A hash brown crust adds a new twist to these savory seafood morsels.", price: 4532, item_status_id: 1)
Item.create(title: "Cosmopolitan", description: "A sweet-tart combination of citrus and cranberry flavors", price: 4532, item_status_id: 1)
Item.create(title: "Gin and Tonic", description: "This quintessential summer time cocktai is enough to refresh you on the hottest of days. This version uses a touch of both lemon and lime juices for the perfect citrusy touch.", price: 4532, item_status_id: 1)
Item.create(title: "Octopus Cocktail", description: "This calamari cocktail is perfectly fresh, flavorful, and light! ", price: 4532, item_status_id: 1)
Item.create(title: "Shrimp Cocktail", description: "Chilled to perfection in a spicy tomato-juice with avocado, red onion, and cilantro.", price: 4532, item_status_id: 1)


Item.create(title: "Assorted Canoli", description: "Yummy little tube-shaped shells of fried pastry dough, filled with a sweet, creamy filling.", price: 700, item_status_id: 2, image_url: "desserts/assorted_canoli.jpg")
Item.create(title: "Molten Lava Cake", description: "Yummy little tube-shaped shells of fried pastry dough, filled with a sweet, creamy filling.", price: 800, item_status_id: 1, image_url: "desserts/molten_lava_cake.jpg")
Item.create(title: "Pomegranate Tort", description: "Filled with buttercream and mousse, this is one savory torte.", price: 900, item_status_id: 1, image_url: "desserts/pomegranate_tort.jpg")
Item.create(title: "Rapsberry Cheesecake", description: "Raspberry sauce is swirled into the batter of a creamy white chocolatecheesecake. Garnish with white chocolate curls if desired..", price: 500, item_status_id: 1, image_url: "desserts/rapsberry_cheesecake.jpg")

Item.create(title: "Blackenend Swordfish", description: "Freshly caught and flown  in, this fish is tasty as well as a healthy choice", price: 2350, item_status_id: 1, image_url: "entrees/blackened_swordfish.jpg")
Item.create(title: "Grilled Platter", description: "Seafood platter with fresh lobster, shrimp, oysters and more. Enough for several people to share..", price: 2100, item_status_id: 1, image_url: "entrees/grilled_platter.jpg")
Item.create(title: "Prawn Delight", description: "Grandiose shrimp served with grilled garlic and butter sauce.", price: 1350, item_status_id: 1, image_url: "entrees/prawn_delight.jpg")
Item.create(title: "Steamer Clams", description: "So simple, but so good - steamed clams served in their own liqueur. Serve with a crusty Italian bread, or over pasta.", price: 1900, item_status_id: 1, image_url: "entrees/steamer_clams.jpg")
Item.create(title: "Stuffed Flounder", description: "A fresh flounder filet, packed full of crab meat and seasonings cooked to perfection.", price: 2650, item_status_id: 1, image_url: "entrees/stuffed_flounder.jpg")
Item.create(title: "Stuffed Lobster", description: "Fresh from Maine and bathed in butter, this is stuffed lobster is our most popluar dish.", price: 3895, item_status_id: 1, image_url: "entrees/stuffed_lobster.jpg")
Item.create(title: "Surf and Turf", description: "Fresh from Maine, this lobster tail with your choice of filet, Delmonico steak, porterhouse, prime rib or New York strip. ", price: 4800, item_status_id: 2, image_url: "entrees/surf_and_turf.jpg")

Item.create(title: "Calamari Salad", description: "Fresh from Maine, this lobster tail with your choice of filet, Delmonico steak, porterhouse, prime rib or New York strip. ", price: 1300, item_status_id: 1, image_url: "salads/calamari_salad.jpg")
Item.create(title: "Scallops with Edamame", description: "Pan seared scallops tossed in an edamame ", price: 1200, item_status_id: 1, image_url: "salads/scallop_with_edamame.jpg")
Item.create(title: "Grilled Salmon Salad", description: "Savory Salmon Salad mixed with fresh parsley, green onions and a citruis vinegrette", price: 1200, item_status_id: 1, image_url: "salads/grilled_salmon_salad.jpg")
Item.create(title: "Thai Shrimp Salad", description: "A delicious blend of garden fresh vegetables, tossed in a chili lime vinaigrette and topped with juicy shrimp, wonton strips, peanut sauce and fresh cilantro", price: 1200, item_status_id: 1, image_url: "salads/thai_shrimp_salad.jpg")

Category.create(name: "Appetizers")
Category.create(name: "Cocktails")
Category.create(name: "Desserts")
Category.create(name: "Entrees")
Category.create(name: "Salads")

ItemCategory.create(item_id: 1, category_id: 1)