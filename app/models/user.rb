class User < ApplicationRecord
	has_many :habits
	has_many :projects
	has_many :todos

	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
