class User < ApplicationRecord
  has_many :stats
  has_many :food_lists
  # after_create :saveUserAfterCreate

  # def saveUserAfterCreate
  #   client.contact_add(
  #     "email" => self.email,
  #     "p[2]" => 2
  #   )
  # end
end
