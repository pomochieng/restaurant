require 'sinatra'
require 'order'

get('/order') do
  @order = Order.new
  @order.tableno = "T001"
  erb :index
end

get('/order/form') do
  erb :form
end

post('/order/create') do
  puts "Received:#{params.inspect}"
  @order = Order.new
  @order.tableno = params['tableno']
  @order.waiter = params['waiter']
  @order.food = params['food']
  @order.beverage = params['beverage']
end

