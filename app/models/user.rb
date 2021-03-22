class User < ApplicationRecord
	has_many :habits
	has_many :projects
	has_many :todos


end
