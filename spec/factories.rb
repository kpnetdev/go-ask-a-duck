FactoryGirl.define do

  factory :question do
    title {Faker::Lorem.word}
    body {Faker::Lorem.sentence}
  end
end