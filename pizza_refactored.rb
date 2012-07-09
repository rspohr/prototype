class Pizza
 attr_accessor :description, :crust, :price
	def initialize(description, crust, price)
		@description = description
		@crust = crust
		@price = price
	end

end

class Peperoni < Pizza
end

class Margherita < Pizza
end

class CreamyCheese < Pizza
end

class Coke
	def description
		"Coke Zero and Light"
	end

	def price
		20
	end
end

class Order
	def initialize
		@items = []
	end

	def add(item)
		@items << item
	end

	def summary
		@items.each do |item|
			puts "#{item.description}: $ #{item.price}"
		end
	end

	def total
		@items.map {|i| i.price}.reduce(:+)
	end
end

margherita    = Margherita.new("Margherita", "garlic bread", 35.00)
creamy_cheese = CreamyCheese.new("Creamy Cheese", "thin crust", 25.00)
peperoni      = Peperoni.new("Peperoni", "pan crust", 30.00) 
coke          = Coke.new

available_items = [margherita, creamy_cheese, peperoni, coke]

order = Order.new

available_items.each do |item|
	puts "How many '#{item.description}'? ($#{item.price})"
	gets.to_i.times { order.add(item) }
end

order.summary
puts "Total is: #{order.total}"
