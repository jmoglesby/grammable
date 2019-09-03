FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "person#{n}@example.com" }
    password { 'secretPassword' }
    password_confirmation { 'secretPassword' }
  end
end
