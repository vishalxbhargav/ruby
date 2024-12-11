def stock_picker(prices)
  min_price = prices[0]    # The first day's price
  max_profit = 0           # Maximum profit found so far
  best_days = [0, 0]       # The best days to buy and sell
  
  # Iterate through the list, starting from the second day
  prices.each_with_index do |price, index|
    next if index == 0     # Skip the first day (already considered as min_price)

    # If selling on the current day results in higher profit
    if price - min_price > max_profit
      max_profit = price - min_price
      best_days = [prices.index(min_price), index]  # Record the buy and sell days
    end
    
    # Update the minimum price if a new lower price is found
    if price < min_price
      min_price = price
    end
  end
  
  best_days
end

# Example usage:
p stock_picker([17,3,6,9,15,8,6,1,10])  # Output: [1, 4]
