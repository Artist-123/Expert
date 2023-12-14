class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true
    validates :email, format: { with: /\A(.+)@(.+)\z/, message: "invalid"  }, uniqueness: { case_sensitive: false }, length: { minimum: 4, maximum: 254 }
    validates :password, format: { with: /\A.*(?=.*\d)(?=.*[!@#$%^&*]).*\z/,
    message: 'must contain at least one digit and one special character' }
    validates :mobile_no, format: { with: /\A\d+\z/,
    message: 'must only contain numbers' }
end
