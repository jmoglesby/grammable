FactoryBot.define do
  factory :comment do
    message { 'This is a comment' }
    association :user
    association :gram
  end

  factory :user do
    sequence(:email) { |n| "person#{n}@example.com" }
    password { 'secretPassword' }
    password_confirmation { 'secretPassword' }
  end

  factory :gram do
    message { 'hello!' }
    picture { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'picture.png').to_s, 'image/png') }
    association :user
  end
end
