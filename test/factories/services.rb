FactoryBot.define do
  factory :service do
    ip { Faker::Internet.private_ip_v4_address }
    name { Faker::Name.name }
    node
  end
end
