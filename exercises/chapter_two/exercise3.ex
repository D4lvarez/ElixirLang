aply_tax = fn price -> 
  tax = price * 0.12
  new_price = price + tax
  IO.puts("Price: #{new_price} - Tax: #{tax}") end

Enum.each([12.5, 30.99, 250.49, 18.80], aply_tax)
