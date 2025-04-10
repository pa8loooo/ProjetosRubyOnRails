class User < ApplicationRecord
  has_many :loans
  has_many :books, through: :loans
end
