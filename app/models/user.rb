class User < ApplicationRecord
	has_secure_password
	validates :first_name, {presence: true}
	validates :last_name, {presence: true}
	validates :user_name, {presence: true, uniqueness: true}
	validates :mail, {presence: true, uniqueness: true}


	has_many :habits
	has_many :projects
	has_many :todos


end
