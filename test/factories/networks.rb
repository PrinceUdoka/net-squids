FactoryBot.define do
  factory :network do
    ip { Faker::Internet.private_ip_v4_address }
    name { Faker::Name.name }
    mask { 24 }
  end
end
