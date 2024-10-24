CREATE DATABASE commerce;
USE commerce;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image_url VARCHAR(255),
    recommendation TEXT,  -- Field for recommendations
    customer_reviews TEXT,  -- Field for customer reviews
    health_tips TEXT  -- Field for health tips
);
INSERT INTO products (name, description, price, image_url, recommendation, customer_reviews, health_tips) VALUES
('Organic Coffee Beans', 
 'Organic coffee beans are sourced from farms that adhere to strict organic farming practices, ensuring no synthetic fertilizers or pesticides are used. These beans are typically grown in shaded areas, promoting biodiversity and enhancing flavor profiles. The careful cultivation process results in rich, aromatic coffee with a deep, robust flavor. These beans offer a natural caffeine boost, making them a popular choice for coffee lovers seeking a healthier alternative.', 
 800, 
 '../static/css/images/product1.jpg', 
 'Brew with a French press or pour-over for maximum flavor. Pair with a healthy breakfast for a nutritious start to your day.', 
 'The flavor is unmatched; it\'s smooth and rich. I love knowing my coffee is grown sustainably!', 
 'Opt for organic coffee to minimize exposure to harmful chemicals. Enjoy in moderation to avoid excessive caffeine intake.'
),

('Organic Oil', 
 'Organic oil, such as olive, coconut, or avocado oil, is extracted from organically grown plants without the use of chemical pesticides or fertilizers. These oils retain their natural nutrients and flavors, making them perfect for cooking, dressing salads, or baking. Organic oils provide healthy fats that can support heart health and improve digestion, making them a staple in many kitchens.', 
 660, 
 '../static/css/images/product2.jpg', 
 'Choose cold-pressed oils for maximum flavor and health benefits. Store in a cool, dark place to preserve freshness.', 
 'This oil is my go-to for cooking; it adds such great flavor! I feel better using organic oils; they taste cleaner.', 
 'Use organic oil for sautéing vegetables to retain their nutrients. Incorporate into salad dressings for healthy fat absorption.'
),

('Organic Juice Bottles', 
 'Organic juice bottles contain freshly pressed juices made from fruits and vegetables grown without synthetic pesticides or fertilizers. Each bottle is packed with vitamins, minerals, and antioxidants, providing a refreshing and nutritious beverage option. These juices offer a convenient way to increase daily fruit and vegetable intake while enjoying the pure, natural flavors.', 
 580, 
 '../static/css/images/product3.jpg', 
 'Pair with a healthy breakfast or snack for added nutrients. Rotate flavors to enjoy a variety of health benefits.', 
 'These juices are so fresh; I can taste the quality! I love that there\'s no added sugar; just pure juice.', 
 'Opt for juices with no added sugars for a healthier choice. Enjoy as part of a balanced diet for optimal nutrition.'
),
('Organic Cabbage', 'Organic cabbage is a versatile leafy vegetable that thrives in healthy soil, free from synthetic pesticides and fertilizers. It is rich in vitamins K and C, fiber, and various antioxidants, making it an excellent choice for salads, stir-fries, or fermented dishes like sauerkraut. Its crunchy texture and subtle flavor make it a favorite among health enthusiasts.', 125, '../static/css/images/product 4.webp','Try fermented cabbage for gut health benefits.
Incorporate into smoothies for added nutrients.','The crunchiness is perfect; I love it in my salads!
This cabbage lasts longer than regular ones!','Consume raw to maximize vitamin content.
Add to meals for increased fiber intake.'),

('Organic Lime', 'Organic limes are small citrus fruits that are grown without harmful chemicals, providing a zesty flavor and vibrant acidity. Rich in vitamin C and antioxidants, these limes can enhance the taste of various dishes and beverages. They are perfect for marinades, dressings, or simply squeezed into water for a refreshing drink.', 40, '../static/css/images/product 5.webp','Pair with fish or chicken for a fresh flavor.
Use zest for added fragrance in baking.','These limes are incredibly juicy; they elevate my drinks!
I love using organic limes in my cooking; so flavorful!','Use in beverages to boost vitamin C intake.
Incorporate into dishes for flavor and health benefits.'),

('Organic Green Brinja', 'Organic green brinja, also known as green bell peppers, are cultivated without synthetic fertilizers or pesticides, ensuring a crisp, sweet flavor. These vibrant vegetables are low in calories and rich in vitamins A and C, making them an excellent addition to salads, stir-fries, and salsas. Their crunchy texture adds a satisfying bite to any dish.', 60, '../static/css/images/product 6.webp','Roast or grill for enhanced flavor.
Combine with other vegetables for a colorful stir-fry.','These brinjas are so fresh; I love them in my salads!
The crunch and sweetness are fantastic!','Eat raw for maximum nutrient retention.
Include in daily meals to increase vegetable intake.'),

('Organic Orange', 'Organic oranges are sweet, juicy fruits that are grown without synthetic pesticides or fertilizers. Packed with vitamin C and fiber, these oranges are not only delicious but also provide numerous health benefits. Enjoy them as a refreshing snack, juice them for breakfast, or add them to salads for a burst of flavor.', 165, '../static/css/images/product 7.webp','Pair with dark chocolate for a delightful treat.
Add zest to dishes for enhanced flavor.','These oranges are so sweet; I cant get enough!
I love the quality; theyre perfect for juicing!','Consume whole oranges for added fiber.
Use juice sparingly to avoid excessive sugar intake.'),

('Organic Tomato', 'Organic tomatoes are grown in rich, chemical-free soil, ensuring a naturally sweet and juicy flavor. These vibrant fruits are rich in vitamins C and K, potassium, and antioxidants like lycopene, making them a nutritious addition to various dishes. They can be used in salads, sauces, and soups, adding freshness and color to meals.', 100, '../static/css/images/product 8.webp','Use in salads for a refreshing crunch.
Blend into sauces for enhanced flavor.','These tomatoes are incredibly flavorful; perfect for my salads!
I love using organic tomatoes in my cooking; they taste so fresh!','Eat raw for maximum nutrients.
Cook tomatoes to enhance lycopene absorption.'),

('Organic Lettuce', 'Organic lettuce is a leafy green vegetable that is cultivated without harmful chemicals, ensuring a crisp and refreshing taste. Rich in vitamins A and K, this versatile green can be used in salads, sandwiches, or as a wrap for various fillings. Its light flavor makes it a staple in many healthy diets.', 85, '../static/css/images/product 9.webp','Store in a cool place to maintain freshness.
Try different varieties for diverse flavors.','The lettuce is so crisp and fresh; it makes my salads amazing!
I love knowing my greens are organic and chemical-free!','Incorporate into salads for added fiber.
Pair with a variety of vegetables for balanced nutrition.'),

('Organic Mixed Vegetables', 'Organic mixed vegetables are a colorful combination of various vegetables grown without synthetic pesticides or fertilizers. This medley is rich in vitamins, minerals, and antioxidants, making it a nutritious addition to any meal. Ideal for stir-fries, soups, or as a side dish, organic mixed vegetables offer convenience and health benefits.', 290, '../static/css/images/product 10.png','Pair with grains for a balanced meal.
Use as a filling for wraps or tacos','The variety and freshness of these veggies are fantastic!
I love using this mix for quick, healthy meals!','Steam or sauté to retain nutrients.
Include in daily meals for increased vegetable intake.'),

('Organic Saffron', 'Organic saffron is a premium spice derived from the stigma of the Crocus sativus flower, cultivated without synthetic chemicals. Known for its unique flavor and vibrant color, saffron is often used in dishes like risottos, paellas, and desserts. This spice not only enhances culinary creations but also boasts numerous health benefits.', 980, '../static/css/images/product 11.png','Toss in salads for added sweetness.
Roast for a concentrated flavor in dishes.','These cherry tomatoes are so sweet; I can eat them by the handful!
Perfect for salads or as a quick snack!','Enjoy raw for maximum nutrient retention.
Pair with healthy fats to enhance lycopene absorption.'),

('Organic Cherry Tomatoes', 'Organic cherry tomatoes are small, sweet fruits grown without synthetic pesticides or fertilizers. Their bite-sized form makes them perfect for snacking, salads, or as a colorful addition to various dishes. These tomatoes are rich in vitamins, antioxidants, and hydration, offering a burst of flavor and nutrition in every bite.', 200, '../static/css/images/product 12.png',' Great for snacking, salads, or roasting.','Sweet and juicy, perfect for salads.
Delicious snack on the go.','High in antioxidants.
Supports heart health.'),

('Organic Juicy Fresh Malta', 'Organic juicy fresh malta is a variety of citrus fruit known for its sweet and tangy flavor. Grown organically, these fruits provide a rich source of vitamin C, fiber, and antioxidants. Fresh malta can be enjoyed whole, juiced, or added to salads, making them a refreshing and nutritious snack.', 80, '../static/css/images/product 13.png',' Best enjoyed fresh or as juice.','Sweet and full of flavor.
Perfect balance of sweetness and tang.','Boosts immunity.
Aids in digestion.'),

('Organic Bucket of Sofeda', 'Organic bucket of sofeda refers to a collection of sweet, fragrant, and juicy sofeda fruits grown without harmful chemicals. Known for their delightful flavor and high nutritional value, these fruits can be enjoyed fresh, added to desserts, or used in smoothies, making them a versatile choice for health-conscious consumers.', 250, '../static/css/images/product 14.png','Great for smoothies or snacking.','Tastes so fresh and natural.
Perfect for making smoothies.','Improves digestion.
Provides natural energy boost.'),

('Organic Red Strawberry Jam', 'Organic red strawberry jam is made from organically grown strawberries without artificial preservatives or sweeteners. This jam retains the natural sweetness and vibrant flavor of fresh strawberries, making it a delightful spread for bread, pancakes, or desserts. Enjoy it as a treat that combines deliciousness with health benefits.', 330, '../static/css/images/product 15.png','Best for spreading on toast or desserts.','Sweet and fresh, tastes like real strawberries.
Great on pancakes!','Packed with antioxidants.
Good source of vitamin C.'),

('Organic Orange', 'Organic oranges are sweet, juicy fruits that are grown without synthetic pesticides or fertilizers. Packed with vitamin C and fiber, these oranges are not only delicious but also provide numerous health benefits. Enjoy them as a refreshing snack, juice them for breakfast, or add them to salads for a burst of flavor.', 100, '../static/css/images/product 16.png','Great for fresh juices or snacking.','Sweet, tangy, and full of flavor.
Perfectly juicy and fresh.','Boosts immune system.
Promotes hydration.'),

('Organic Tomato Cluster', 'Organic tomato clusters consist of ripe, juicy tomatoes that are harvested without synthetic chemicals. This natural growing process ensures a rich flavor and maximum nutritional value. These clusters are perfect for salads, sauces, or roasting, making them a versatile ingredient for various dishes.', 120, '../static/css/images/product 17.png','Ideal for salads, sauces, and roasting.','Very fresh and sweet.
Perfect for homemade sauces.','Rich in antioxidants.
Supports skin and heart health.'),

('Organic Broccoli', 'Organic broccoli is a nutrient-dense vegetable grown without harmful pesticides or fertilizers. Rich in vitamins C, K, and fiber, broccoli can be enjoyed raw in salads or cooked in various dishes. Its vibrant green color and mild flavor make it a popular choice for health-conscious consumers.', 165, '../static/css/images/product 18.png','Great for steaming, stir-frying, or adding to soups.','Crisp and fresh, perfect for stir-fries.
Keeps well in the fridge.','Supports heart health.
Boosts immunity.'),

('Organic Spinach', 'Organic spinach is a leafy green vegetable cultivated without harmful chemicals. Rich in iron, vitamins A and K, and antioxidants, spinach is versatile and can be added to salads, smoothies, or cooked dishes. Its mild flavor and tender texture make it a staple in many diets.', 125, '../static/css/images/product 19.jpg','Ideal for salads, smoothies, or side dishes.','Fresh and tender.
Great in my morning smoothies.','Rich in iron and vitamins.
Promotes healthy bones and eyes.'),

('Organic Lettuce Head', 'Organic lettuce heads are fresh, leafy greens grown without synthetic fertilizers or pesticides. These crisp greens are perfect for salads, sandwiches, or as a healthy wrap for various fillings. With their light flavor and crunchy texture, organic lettuce heads make a nutritious addition to any meal.', 150, '../static/css/images/product 20.jpg','Best for fresh salads and wraps.','Crisp and fresh, lasts a while.
Perfect for my salads.','Low-calorie, promotes weight loss.
High in vitamins for skin health.'),

('Organic Carrots', 'Organic carrots are root vegetables grown in chemical-free soil, ensuring a naturally sweet flavor and vibrant color. Rich in beta-carotene, fiber, and vitamins, carrots can be enjoyed raw, steamed, or roasted. Their crunchy texture and versatility make them a favorite among health enthusiasts.', 80, '../static/css/images/product 21.jpg','Ideal for snacking, roasting, or adding to stews.','Sweet and crunchy, great for salads.
Perfect for healthy snacking.','Supports eye health.
Rich in antioxidants.'),

('Organic Celery', 'Organic celery is a crunchy vegetable cultivated without harmful chemicals. This low-calorie snack is rich in vitamins K and C, potassium, and fiber. Celery can be enjoyed raw, in salads, or as an ingredient in soups and stews, providing a refreshing crunch and numerous health benefits.', 125, '../static/css/images/product 22.jpg','Great for snacking or adding to salads.','Fresh and crunchy, perfect for dips.
Great for juicing.','Aids in digestion.
Low-calorie, good for weight management.'),

('Organic Bananas', 'Organic bananas are sweet, creamy fruits grown without synthetic pesticides or fertilizers. They are rich in potassium, fiber, and vitamins, making them an excellent choice for a quick and nutritious snack. Enjoy them on their own, in smoothies, or added to baked goods for natural sweetness.', 150, '../static/css/images/product 23.png',' Ideal for snacking, smoothies, or baking.','Sweet and perfectly ripe.
Great for morning smoothies.','High in potassium, supports heart health.
Provides natural energy boost.'),

('Organic Potato', 'Organic potatoes are tubers grown in healthy soil, free from harmful chemicals. These versatile vegetables are rich in vitamins C and B6, potassium, and fiber. They can be prepared in various ways, including baking, boiling, or frying, making them a staple in many households.', 400, '../static/css/images/product 24.jpg','Best for roasting, mashing, or adding to stews.','Fresh and flavorful.
Great for roasting, perfect texture.','Supports digestive health.
Provides sustained energy.');


select * from products;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100),
    password VARCHAR(100),
    email VARCHAR(100)
);
ALTER TABLE users MODIFY password VARCHAR(255);

select * from users;