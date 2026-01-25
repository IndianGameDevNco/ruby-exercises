# frozen_string_literal: true

def stock_picker(days)
  n = days.length - 1
  best_profit = '-inf'.to_i
  buy_day = 0
  sell_day = 0
  days.each_with_index do |price, index|
    days[index..n].each_with_index do |price2, index2|
      profit = price2 - price
      next unless profit > best_profit

      best_profit = profit
      buy_day = index
      sell_day = index + index2
    end
  end
  [buy_day, sell_day]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]) # => [1,4]
