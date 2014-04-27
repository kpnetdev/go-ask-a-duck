FactoryGirl.define do
  factory :user do
    username { Faker::Internet.user_name }
    email    { Faker::Internet.email }
    password { Faker::Lorem.word }
  end

  factory :question do
    title { Faker::Lorem.word }
    body  { Faker::Lorem.sentence }
    user_id 1
  end

  factory :answer do
    title { Faker::Lorem.word }
    body  { Faker::Lorem.sentence }
    question_id 1
    user_id 1
  end
end
