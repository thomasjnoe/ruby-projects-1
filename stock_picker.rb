#TO-DO: Refactor with Enumerable#each_with_index

def stock_picker(prices)
    best_prices = [0, 0]
    best_profit = best_prices[1] - best_prices[0]
    count = 0
    prices.each do |low|
        (count..prices.length-1).each do |high|
            profit = prices[high] - low
            if profit > best_profit
                best_prices = [low,prices[high]] 
                best_profit = profit
            end
        end
        count += 1
    end
    return prices.index(best_prices[0]), prices.rindex(best_prices[1])
end

stock_prices = [17,3,6,9,15,8,6,1,10]

p stock_picker(stock_prices)