require 'rest-client'

puts "Getting Games Data"
Game.create(
            title: "Grand Theft Auto V",
            genre: "Action",
            platform: "PC",
            image: "https://media.rawg.io/media/games/456/456dea5e1c7e3cd07060c14e96612001.jpg"
        )

    # def api_key
    #     ENV["API_KEY"]
    # end

    # def games_dataset
    #     api_data = { key: api_key }
    #     games = RestClient.get("https://api.rawg.io/api/games?key=#{api_data[:key]}")
    #     games_array = JSON.parse(games)["results"]
    #     games_array.each do |g|
    #         Game.create(
    #             title: g["name"],
    #             genre: g["genres"][0]["name"],
    #             platform: g["platforms"][0]["platform"]["name"],
    #             image: g["background_image"]
    #         )
    #     end


    # end
games_dataset() 
puts "Seeding Games Data"
