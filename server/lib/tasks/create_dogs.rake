task create_dogs: :environment do
    puts "Creating dogs!"
    # User.each(&:delete_all)
    20.times do
      breed = ["Dalmatian", 
        "Yorkipoo", 
        "Corgi", 
        "French Bulldog", 
        "Shiba Inu", 
        "Labrador", 
        "Greyhound", 
        "Shitzu", 
        "Mixed",
        "Other",
        "German Shepherd",
        "Golden Retreiver",
        "Beagle",
        "Poodle",
        "Dachshund",
        "Siberian Husky",
        "Rottweiler",
        "Chihuahua",
        "Boxer",
        "Spaniel",
        "Great Dane"
      ].sample
      Dog.create!({
        name: Faker::Name.name,
        breed: breed,
        age: "#{rand(1..20)} years",
        gender: ["male", "female"].sample,
        photo: "#{breed.gsub(' ', "_").downcase}.jpg",
        disposition: [
          "Sweet",
          "Calm",
          "Excitable",
          "Indoorsy",
          "Outdoorsy",
          "A real asshole"
        ].sample,
        email: Faker::Internet.email
      })
    end
  end