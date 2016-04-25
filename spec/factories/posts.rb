FactoryGirl.define do           #new factory that generates posts with random title and body, topic , user and blank rank
  factory :post do
    title RandomData.random_sentence
    body RandomData.random_paragraph
    topic
    user
    rank 0.0
  end
end
