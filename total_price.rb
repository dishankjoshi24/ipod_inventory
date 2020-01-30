module TotalPrice
  def fetch_rates
    case country?
    when 0
      return 100, 50
    when 1
      return 50, 100
    else
      puts "invalid country"
    end
  end

  def calculate_total
    home_inventory, away_inventory = fetch_inventory
    home_rate, away_rate = fetch_rates
    return (home_inventory * home_rate) + (away_inventory * (away_rate + 40))
  end
end
