 FactoryGirl.define do
  factory :vote do
      value 1
      post 
      user
      after(:build) { update_rank }
    end
end

