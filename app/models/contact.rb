class Contact < ApplicationRecord
  belongs_to :kind
  has_many :phones
  has_many :addresses
end
