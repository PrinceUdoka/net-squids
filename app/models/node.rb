class Node < ApplicationRecord
  belongs_to :network

  validates :name, presence: true
  validates :ip, presence: true
end
