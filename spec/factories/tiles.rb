FactoryGirl.define do
  factory :tile do
    message { [Faker::HipsterIpsum.sentence, Faker::DizzleIpsum.sentence, Faker::BaconIpsum.sentence, Faker::Lorem.sentence].sample }
    sound_id { [1..100].sample.to_s }
    color { ["Red", "Green", "Blue", "Yellow", "Purple", "Orange"].sample }
  end
end