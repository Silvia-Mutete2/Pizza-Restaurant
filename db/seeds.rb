puts "🌱 Seeding..."

Pizza.create!([
    {
        name:  "Cheese",
        ingredients:  "Dough, Tomato Sauce, Cheese"
    },
    {
        name: "Pepperoni",
        ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni"
    },
    {
       name: "Marinara",
       ingredients: "Tomatoes, Garlic, Oregano, Virgin olive oil"
    },
    {
        name: "Margherita",
        ingredients: "Tomatoes,Mozzarella, Basil,Virgin olive oil"
    }

])

Restaurant.create!([
    {
        name: "Sottocasa NYC",
        address: "298 Atlantic Ave, Brooklyn, NY 11201"
    },
    {
        name: "PizzArte",
        address: "69 W 55th St, New York, NY 10019"
    },
    {
        name: "Kempinski",
        address: " Nairobi, Westlands"
    },
    {
        name: "Serena",
        address: "Nairobi, NY 10019"
    }

])

RestaurantPizza.create!([
    {
        price: 5,
        pizza_id: 1,
        restaurant_id: 3
    },
    {
        price: 10,
        pizza_id: 4,
        restaurant_id: 3
    },
    {
        price: 7,
        pizza_id: 2,
        restaurant_id: 4
    }
])

puts "✅ Done seeding!"