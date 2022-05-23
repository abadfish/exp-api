class User < ApplicationRecord
	has_many :todos
	has_many :subscriptions

	enum role: [:admin, :customer]
end
