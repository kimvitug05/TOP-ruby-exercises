# [Project: Stock Picker](https://www.theodinproject.com/courses/ruby-programming/lessons/stock-picker)

def stock_picker(stock_prices)
    max_profit = 0
    current_profit = 0
    buy_sell_days = []
  
    for buy, buy_index in stock_prices.each_with_index
        for sell, sell_index in stock_prices.each_with_index
            current_profit = sell - buy
            if sell_index > buy_index && current_profit > max_profit
                max_profit = current_profit
                buy_sell_days.clear
                buy_sell_days.push(buy_index).push(sell_index)
            end
        end
    end
    puts max_profit
    print buy_sell_days
    puts
end