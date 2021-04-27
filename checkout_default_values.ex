defmodule Checkout do
  defguard is_rate(value) when is_float(value) and value >= 0 and value <= 1
  defguard is_cents(value) when is_integer(value) and value >= 0
  # \\ indica que el parámetro tiene un valor por defecto
  def total_cost(price, quantity \\ 10), do: price * quantity
  # El uso de la cláusula when evita el uso de helpers dentro del modulo
  def total_price(price, tax_rate) when is_cents(price) >= 0 and is_rate(tax_rate) >= 0 do
    price + tax_cost(price, tax_rate)
  end
  def tax_cost(price, tax_rate) when is_cents(price) >= is_rate(tax_rate) do
    price * tax_rate
  end
end
