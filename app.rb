require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combo')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @money = params.fetch("money").to_f()
  @quarter_want = params.fetch("quarters").to_i()
  @dime_want = params.fetch("dimes").to_i()
  @nickel_want = params.fetch("nickels").to_i()
  @result = @money.coin_combo(@quarter_want,@dime_want, @nickel_want)
  @pennies = @result[0]
  @nickels = @result[1]
  @dimes = @result[2]
  @quarters = @result[3]

  erb(:result)
end
