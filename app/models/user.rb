class User < ApplicationRecord
    has_secure_password
    validates_length_of :password, minimum: 5
    validates_presence_of :email
    validates_uniqueness_of :email
end
