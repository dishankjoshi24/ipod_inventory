require './total_price'
require './inventory'
require './country'
class Order
  include TotalPrice
  include Country
  include Inventory

  attr_accessor :country, :quantity
  def initialize(country, quantity)
    @country = country
    @quantity = quantity
    best_price if valid_quantity? unless country?.nil?
  end

  def best_price
    home_inventory, away_inventory = fetch_inventory
    total = calculate_total
    puts total, 100 - home_inventory, 100 - away_inventory
    return total, 100 - home_inventory, 100 - away_inventory
  end
end

Order.new("brazil", 10)
