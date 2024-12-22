FactoryBot.define do
  factory :node do
    ip { Faker::Internet.private_ip_v4_address }
    name { Faker::Name.name }
    network
  end
end
