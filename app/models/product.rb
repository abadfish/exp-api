class Product < ApplicationRecord

	enum product_type: [:food, :service]
end
