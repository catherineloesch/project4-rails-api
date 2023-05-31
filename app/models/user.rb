class User < ApplicationRecord
    #bcryp gem marcro:
    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true

    has_many :jobs, dependent: :destroy
end
