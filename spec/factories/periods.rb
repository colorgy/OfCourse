FactoryGirl.define do
  factory :period do
    organization_code { "NTUST" }
    code { %w(1 2 3 4 5 6 7 8 A B C).sample }
    day { %w(一 二 三 四 五 六 日).sample }
    start_at { Faker::Time.forward.strftime('%H:%M') }
    end_at { (Time.strptime(start_at, '%H:%M') + 1.hour).strftime('%H:%M') }
  end

end
