class User < ApplicationRecord
    #bcryp gem marcro:
    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
    validates :password, length: { in: 2..20 }

    has_many :jobs, dependent: :destroy
    has_many :applications
    has_many :jobs, through: :applications
end
