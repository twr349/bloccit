FactoryGirl.define do
   factory :comment do
     body RandomData.random_sentence
     post
     topic
     user
    end
end