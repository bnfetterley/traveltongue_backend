class User < ApplicationRecord
    has_many :dishes
    has_many :comments
end
