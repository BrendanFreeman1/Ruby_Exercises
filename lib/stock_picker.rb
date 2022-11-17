#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
#It should return a pair of days representing the best day to buy and the best day to sell. 
#Days start at 0. You need to buy before you can sell


def stock_picker(prices)
  buy_pointer = 0
  sell_pointer = 1
  sell_difference = 0
  buy_day = nil
  sell_day = nil

  while(buy_pointer < prices.length - 1) do
    while(sell_pointer < prices.length) do
      if((prices[sell_pointer] - prices[buy_pointer]) > sell_difference)

        sell_difference = prices[sell_pointer] - prices[buy_pointer]
        buy_day = buy_pointer
        sell_day = sell_pointer

      end
      sell_pointer += 1
    end
    buy_pointer += 1
    sell_pointer = buy_pointer + 1
  end
  return [buy_day, sell_day]
end

p stock_picker([17,3,6,9,15,8,6,1,19])
