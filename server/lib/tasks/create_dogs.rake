task create_dogs: :environment do
    puts "Creating dogs!"
    # User.each(&:delete_all)
    20.times do
    Dog.create!({
      name: Faker::Name.name,
      breed: ["Dalmatian", 
        "Yorkipoo", 
        "Corgi", 
        "French Bulldog", 
        "Shiba Inu", 
        "Labrador", 
        "Greyhound", 
        "Shitzu", 
        "Mixed/Other",
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
      ].sample,
      age: 20.years.ago..1.years.ago,
      gender: ["male", "female"].sample,
      photo: ["none"],
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