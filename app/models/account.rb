class Account < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :user_id, presence: true, uniqueness: true, length: {minimum: 5, maximum: 20}
  validates :password, presence: true, length: {minimum: 5}
  validate :encrypt_password

  def encrypt_password
    self.password = BCrypt::Password.create(self.password)
  end

  class << self
    def authenticate(id, pass)
      acc = Account.find_by(user_id: id)
      acc && BCrypt::Password.new(acc.password) == pass
      return acc
    end
  end
end
