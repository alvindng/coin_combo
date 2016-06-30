require('pry')
class Float
  define_method(:coin_combo) do |quarter, dime, nickel|
    remainder = (self * 100).to_i
    coin_num = [quarter, dime, nickel, 1/0.0]
    coin_val = [25, 10, 5, 1]
    result_array = []
    coin_val.each_with_index do |val, idx|
      counter = 0
      coin = 0
        until (counter == coin_num[idx] || remainder < val)
          coin = coin + 1
          counter = counter + 1
          remainder = remainder - val
        end
        result_array.unshift(coin)
    end
    result_array
  end
end
