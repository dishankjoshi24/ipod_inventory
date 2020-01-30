module Inventory
  MAX_INVENTORY = 100
  
  def fetch_inventory
    if quantity > MAX_INVENTORY && quantity % 10 == 0
      return MAX_INVENTORY, quantity - (quantity % 10) - MAX_INVENTORY
    elsif quantity > MAX_INVENTORY
      return MAX_INVENTORY - 10 + quantity % 10, quantity - (quantity % 10) - MAX_INVENTORY - 10
    else 
      return quantity, 0
    end  
  end


  def valid_quantity?
    puts "OUT OF STOCK" if quantity > MAX_INVENTORY * 2
    quantity > MAX_INVENTORY * 2 ? false : true
  end
end
