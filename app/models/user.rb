class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true 
    has_many :dishes
    has_many :comments
end
