FactoryGirl.define do
  pw = RandomData.random_sentence
  factory :user do
    name RandomData.random_name
    #sequence generates unique values in specific format (email in this ex.)
    sequence(:email){|n| "user#{n}@factory.com" }
    password pw
    password_confirmation pw
    role :member
  end
end
