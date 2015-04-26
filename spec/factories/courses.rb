FactoryGirl.define do
  factory :course do
    year { Date.today.year }
    term { 1 }
    organization_code { "NTUST" }
    lecturer_name { Faker::Name.name }
    name { Faker::Lorem.sentence }
    english_name { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }

    url { Faker::Internet.url }
    website_url { Faker::Internet.url }
  end

end
