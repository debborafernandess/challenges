FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
    login Faker::Internet.user_name
    password Faker::Internet.password
  end
end
