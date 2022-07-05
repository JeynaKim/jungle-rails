class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email email.strip.downcase
    if user && user.authenticate(password) 
      return user 
    end 
  end 
end
