class Network < ApplicationRecord
  validates :name, presence: true
  validates :ip, presence: true
  validates :mask, presence: true
end
