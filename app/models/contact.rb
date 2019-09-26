class Contact < ApplicationRecord
  belongs_to :kind
  has_many :phones
  has_one :address
  belongs_to :company
  has_and_belongs_to_many :users
end
