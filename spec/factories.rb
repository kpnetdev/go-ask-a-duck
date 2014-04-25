FactoryGirl.define do
  factory :user do
    username { Faker::Internet.user_name }
    email    { Faker::Internet.email }
  end

  factory :question do
    title {Faker::Lorem.word}
    body {Faker::Lorem.sentence}
  end
end
