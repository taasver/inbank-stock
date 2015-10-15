json.array!(@stock_calculations) do |stock_calculation|
  json.extract! stock_calculation, :id, :name, :price, :quantity, :percentage,
                :years
  json.url stock_calculation_url(stock_calculation, format: :json)
end
