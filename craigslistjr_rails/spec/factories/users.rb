FactoryGirl.define do
  factory :user do
    sequence(:user_name) {|n| 'puppyoverlord'}
    password 'password'
  end
end
