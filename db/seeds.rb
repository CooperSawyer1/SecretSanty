

User.create(name: "Santa Claus", username: "Supersanta421", email: "supersanta123@gmail.com", password: "HoHoHoHo1", 
            secret_santa_id: 1)
User.create(name: "Elfy", username: "elfster123", email: "elfster3000@gmail.com", password: "elfelfelf3", 
            secret_santa_id: 1)

Gift.create(name: "super soaker", price: 14, user_id: User.all.sample, website: "https://www.youtube.com/watch?v=dQw4w9WgXcQ", 
            giver_id: 1, brand_id: Brand.all.sample)
Gift.create(name: "Chicken", price: 1_411, user_id: User.all.sample, website: "https://www.youtube.com/watch?v=dQw4w9WgXcQ", 
            giver_id: 2, brand_id: Brand.all.sample)

Brand.create(name: "Nike")
Brand.create(name: "Hasbro")
Brand.create(name: "Amazon")
Brand.create(name: "Adidas")
Brand.create(name: "P & G")
Brand.create(name: "Walmart")
Brand.create(name: "Target")
Brand.create(name: "Costco")
Brand.create(name: "Disney")
Brand.create(name: "Vans")
Brand.create(name: "Gucci")