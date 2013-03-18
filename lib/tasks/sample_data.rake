namespace :db do
  desc "Fill database with sample data" 
  task populate: :environment do
    User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar") 
    99.times do |n|
      name  = Faker::Name.name
      email = Faker::Internet.email
      password = "password"
      User.create!(name: name, email: email,
                   password: password,
                   password_confirmation: password)
￼   end 
  end
end
