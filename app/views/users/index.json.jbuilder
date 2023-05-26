json.array! @users do |user|
	json.(user, :id, :name, :role)
	json.subscriptions user.subscriptions do |sub|
		json.(sub, :id, :sku, :product)
	end
	json.todos user.todos do |todo|
		json.(todo, :id, :title)
	end
end