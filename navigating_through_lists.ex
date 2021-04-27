defmodule Math do
  def sum([]), do: 0
  # Se obtiene el primer elemento (head) y se suma con la copia
  # del array dado sin el primero elemento
  # Hasta que tail sea un array vacio
  def sum([head | tail]), do: head + sum(tail)
end
