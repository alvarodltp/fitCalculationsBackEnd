class User < ApplicationRecord
  has_many :stats
  after_create :saveUserAfterCreate

  def saveUserAfterCreate
    client.contact_add(
      email: self.email
    )
  end

end
