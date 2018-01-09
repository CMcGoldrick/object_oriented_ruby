# Exercise: Rewrite your store items using a class instead of a hash.
# a) Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
# b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.

item_1 = {:color => "brown", :price => 4, :size => "small"}
item_2 = {:color => "green", :price => 5, :size => "medium"}
item_3 = {:color => "white", :price => 6, :size => "large"}

class Store
  attr_reader :color, :size
  attr_writer :price

  def initialize(input_options)
    @color = input_options[:color]
    @price = input_options[:price]
    @size = input_options[:size]
  end

  # def color
  #   @color
  # end

  # def size
  #   @size
  # end

  # def price
  #   @price
  # end

  # def price=(price_set)
  #   @price = price_set
  # end
end

my_store_1 = Store.new(
                        color: "red",
                        price: 5,
                        size: "large")

my_store_2 = Store.new( 
                        color: "blue",
                        price: 5,
                        size: "small")

p my_store_1
p my_store_2
my_store_1.price = 10
p my_store_1
