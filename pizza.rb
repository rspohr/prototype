class Pizza
 attr_accessor :ingredients, :crust, :price
	def initialize(ingredientes, crust, price)
		@ingredients = ingredients
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

class OrderPizza

	def take_order(margherita,peperoni,creamy_cheese) 
		@margherita_price = margherita.price
		@peperoni_price = peperoni.price
		@creamy_cheese_price = creamy_cheese.price
		
		puts "How many Margheritas? ($#{margherita.price})"
		@amount_of_margheritas = gets.to_i
		

		puts "How many Peperonis? ($#{peperoni.price})"
		@amount_of_peperonis = gets.to_i

		puts "How many Creamy Cheese? ($#{creamy_cheese.price})"
		@amount_of_creamy_cheese = gets.to_i

	end

	def calculate_price
		@total_order_amount = (@amount_of_margheritas * @margherita_price) + (@amount_of_creamy_cheese * @creamy_cheese_price) + (@amount_of_peperonis * @peperoni_price) 
		puts "You ordered #{@amount_of_margheritas} margheritas, #{@amount_of_creamy_cheese} creamy cheese and #{@amount_of_peperonis} peperonis. The sum of the order is: $#{@total_order_amount}."
	end
end

margherita = Margherita.new("Margherita", "garlic bread", 35.00)
creamy_cheese = CreamyCheese.new("Creamy Cheese", "thin crust", 25.00)
peperoni = Peperoni.new("Peperoni", "pan crust", 30.00) 

order_pizza = OrderPizza.new

order_pizza.take_order margherita, peperoni, creamy_cheese
order_pizza.calculate_price
