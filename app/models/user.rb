class User < ApplicationRecord
    has_secure_password
    validates :Email, uniqueness: true
end
