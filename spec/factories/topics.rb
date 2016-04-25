FactoryGirl.define do         #new factory that generates topic with random name and description
  factory :topic do
    name RandomData.random_name
    description RandomData.random_sentence
  end
end
