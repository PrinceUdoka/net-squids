class Service < ApplicationRecord
  belongs_to :node

  validates :name, presence: true
  validates :ip, presence: true
end
