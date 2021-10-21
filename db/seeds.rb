

User.create(name: "Santa Claus", username: "Supersanta421", email: "supersanta123@gmail.com", password: "HoHoHoHo1", 
            secret_santa_id: 1)
User.create(name: "Elfy", username: "elfster123", email: "elfster3000@gmail.com", password: "elfelfelf3", 
            secret_santa_id: 1)

Gift.create(name: "super soaker", price: 14, user_id: User.all.sample, website: "https://www.youtube.com/watch?v=dQw4w9WgXcQ", 
            giver_id: 1)
Gift.create(name: "Chicken", price: 1_411, user_id: User.all.sample, website: "https://www.youtube.com/watch?v=dQw4w9WgXcQ", 
            giver_id: 2)
