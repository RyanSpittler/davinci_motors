FactoryGirl.define do
  factory :car do
    make { Faker::Company.name }
    model { Faker::Lorem.word.capitalize }
    year { rand(65) + 1950 }
    price { rand * 10000 }
  end
end
