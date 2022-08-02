require 'rest-client'

puts "Removing Previous Data"
Game.destroy_all
User.destroy_all
Review.destroy_all

puts 'Starting Seeds'
puts "Seeding Games Data"

    def api_key
        ENV["API_KEY"]
    end

    def games_dataset
        api_data = { key: api_key }
        games = RestClient.get("https://api.rawg.io/api/games?key=#{api_data[:key]}")
        games_array = JSON.parse(games)["results"]
        games_array.each do |g|
            Game.create(
                title: g["name"],
                genre: g["genres"][0]["name"],
                platform: g["platforms"][0]["platform"]["name"],
                image: g["background_image"]
            )
        end


    end
games_dataset() 
puts "Seeded Games Data"

puts "Seeding User Data"
    User.create(
        username: "jmac90",
        password: "test1234",
        first_name: "James",
        last_name: "Mac"
    )

    User.create(
        username: "DannyL",
        password: "test4321",
        first_name: "Danny",
        last_name: "Linhardt"
    )

    User.create(
        username: "DevG",
        password: "test9876",
        first_name: "Dev",
        last_name: "Garcia"
    )


puts "Seeded User Data"

puts "Seeding Review Data"
    Review.create!(
        title: "GTA Rocks",
        description: "This game is the GOAT",
        upvotes: 10,
        downvotes: 0,
        rating: 5,
        game_id: 1,
        user_id: 1
    )

    Review.create!(
        title: "GTA sux",
        description: "This game sux",
        upvotes: 0,
        downvotes: -10,
        rating: 1,
        game_id: 1,
        user_id: 2
    )

    Review.create!(
        title: "Just ok",
        description: "This game ok",
        upvotes: 0,
        downvotes: 0,
        rating: 3,
        game_id: 2,
        user_id: 3
    )

puts "Seeded Review Data"

puts "Done Seeding!"