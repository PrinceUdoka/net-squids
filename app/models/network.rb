class Network < ApplicationRecord
  validates :name, presence: true
  validates :ip, presence: true
end
